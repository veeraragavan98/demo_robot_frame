import openpyxl as xl

wb = xl.load_workbook("C:/Users/BVeeraragavan/Desktop/DataDriven.xlsx")
sheet = wb.active
sheet.tittle = "Data1"
data_list = [10, 20, 30, 40, 50]


