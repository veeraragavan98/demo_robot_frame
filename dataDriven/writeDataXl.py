import openpyxl as oo
import datetime
import pandas as pd
wb = oo.load_workbook('C:/Users/BVeeraragavan/Desktop/Date.xlsx')
sh = wb.active
c = sh.cell(row=6, column=5)
c.value = 58
wb.save('C:/Users/BVeeraragavan/Desktop/Modified.xlsx')
          