*** Settings ***
Library    RPA.Excel.Files

*** Variables ***
${FILE_PATH}    path/to/yourfile.xlsx
${SHEET_NAME}   Sheet1
@{DATA}         Name    Age
                Alice   30
                Bob     25
                Charlie 28

*** Test Cases ***
Write Data to Excel
    # Open or create the Excel file
    Open Workbook    ${FILE_PATH}    create_if_not_found=True

    # Create a new sheet or use an existing one
    Create Worksheet    ${SHEET_NAME}    if_not_exists=${True}

    # Write headers to the first row
    Set Cell Value    ${SHEET_NAME}    A1    ${DATA}[0]
    Set Cell Value    ${SHEET_NAME}    B1    ${DATA}[1]

    # Loop through the data list and write each row to the Excel sheet
    FOR    ${index}    ${row}    IN ENUMERATE    @{DATA}[1:]
        ${row_num}=    Evaluate    ${index} + 2
        Set Cell Value    ${SHEET_NAME}    A${row_num}    ${row}[0]
        Set Cell Value    ${SHEET_NAME}    B${row_num}    ${row}[1]
    END

    # Save and close the workbook
    Save Workbook
    Close Workbook
