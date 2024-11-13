import openpyxl

# Create a new Excel workbook
wb = openpyxl.Workbook("C:/Users/BVeeraragavan/PycharmProjects/Acxhange/Excel/DataDriven.xlsx")

# Select the active sheet
sheet = wb.active

# Set headers for the first row (optional)
headers = ["Name", "Age", "City"]
sheet.value(headers)


# Function to get input and append it to the Excel file row by row
def add_row_to_excel():
    while True:
        name = input("Enter Name (or type 'exit' to stop): ")
        #if name.lower() == 'exit':
        #   break
        age = input("Enter Age: ")
        city = input("Enter City: ")

        # Append the data to the Excel sheet
        sheet.value([name, age, city])

    # Save the workbook
    wb.save("C:/Users/BVeeraragavan/PycharmProjects/Acxhange/Excel/DataDriven.xlsx")
    print("Data saved to output.xlsx")


# Call the function
add_row_to_excel()
