#version 330

#moj_import <minecraft:light.glsl>
#moj_import <minecraft:fog.glsl>
#moj_import <minecraft:dynamictransforms.glsl>
#moj_import <minecraft:projection.glsl>

in vec3 Position;
in vec4 Color;
in vec2 UV0;
in vec2 UV1;
in ivec2 UV2;
in vec3 Normal;

uniform sampler2D Sampler2;


out float sphericalVertexDistance;
out float cylindricalVertexDistance;
out vec4 vertexColor;
out vec2 texCoord0;
out vec2 texCoord1;
out vec2 texCoord2;

void main() {
    // If you're wondering why this exists, the answer is simple - to add custom items to the creative tab

    // Btw huge W to Bimbobus https://github.com/Bimbusick
    vec4 pos = ProjMat * ModelViewMat * vec4(Position, 1.0);
    vec4 finalColor = Color;

    // Remove enchantment glint if item tint 240 on red and green (15790080)
    if(round(Color.rg * 255.0) == 240.0) {
        pos.z -= 1e-5 * pos.w;
        finalColor = vec4(1);
    }
    gl_Position = pos;

    // Vanilla
    sphericalVertexDistance = fog_spherical_distance(Position);
    cylindricalVertexDistance = fog_cylindrical_distance(Position);
    vertexColor = minecraft_mix_light(Light0_Direction, Light1_Direction, Normal, finalColor) * texelFetch(Sampler2, UV2 / 16, 0); // Color -> finalColor
    texCoord0 = UV0;
    texCoord1 = UV1;
    texCoord2 = UV2;
}