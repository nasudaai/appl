import math

a = 1 #miss
b = 100 #key strokes 

total = a + b #total key strokes
print("total: ", total)



calculation_result = a / total
print("calculation_result: ", calculation_result)


percentage = calculation_result * 100
print("percentage: ", f"{percentage}%")


#round down

  #f-string
format_perc = f"{percentage:.2f}%"
print(format_perc)

  #round
round_perc = round(percentage, 2) 
print(f"{round_perc}%")

  #floor
floor_perc = math.floor( calculation_result * 10000 ) / 100
print(f"{floor_perc}%")
