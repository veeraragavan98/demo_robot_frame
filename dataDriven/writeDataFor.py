import openpyxl
from jproperties import Properties
from string import ascii_lowercase as Alphalower


configs = Properties()
with open('C:/Users/BVeeraragavan/PycharmProjects/Acxhange/writeExcel.properties', 'rb') as config_file:
    configs.load(config_file)
    A = configs.get('A')
    B = configs.get('B')

#Load workbook
wb = openpyxl.load_workbook('C:/Users/BVeeraragavan/PycharmProjects/Acxhange/Excel/DataDriven.xlsx')
sheet = wb.active



#Itrate the row and inputs value
for i in range(len(A)):
    sheet['A' + str(i + 1)].value = A[i]

for j in range(len(B)):
    sheet['B' + str(j + 1)].value = B[j]

#Save the workbook
wb.save('C:/Users/BVeeraragavan/PycharmProjects/Acxhange/Excel/DataDriven8.xlsx')

print('Done')
