import openpyxl

# Create a new workbook
wb = openpyxl.Workbook()

# Select the active sheet
sheet = wb.active

# Optionally, give the sheet a name
sheet.title = "Sheet1"


# List of values to be written to Excel
data_list = [10, 20, 30, 40, 50]

# Loop through the data and write it to column A (starting at row 1)
for index, value in enumerate(data_list, start=1):
    sheet[f'A{index}'] = value

# Save the workbook to a file
wb.save('example.xlsx')

print("Data written successfully!")
