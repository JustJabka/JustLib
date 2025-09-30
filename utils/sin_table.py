import math

sin_table = []
table_length = 9000

for i in range(table_length):
    sin = math.sin((360 * i  / table_length) * math.pi / 180)
    sin_table.append(round(sin, 4))

with open("sin_table.mcfunction", "w") as file:
    file.write(f"data modify storage jabkacore:main math.sin set value {"[" + ",".join(str(x) for x in sin_table)}" + "]")