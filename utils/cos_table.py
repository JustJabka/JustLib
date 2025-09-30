import math

cos_table = []
table_length = 9000

for i in range(table_length):
    cos = math.cos((360 * i  / table_length) * math.pi / 180)
    cos_table.append(round(cos, 4))

with open("cos_table.mcfunction", "w") as file:
    file.write(f"data modify storage jabkacore:main math.cos set value {"[" + ",".join(str(x) for x in cos_table)}" + "]")