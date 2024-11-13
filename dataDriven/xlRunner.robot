*** Settings ***
Library    SeleniumLibrary
Library    ../dataDriven/baseXl1.py

*** Variables ***
${EXCEL_FILE}    path/to/excel/file.xlsx
${SHEET_NAME}    Sheet1

*** Test Cases ***
Write Data to Excel
    Open Workbook    ${EXCEL_FILE}
    Write To Cell    ${SHEET_NAME}    1    1    Hello World
    Write To Cell    ${SHEET_NAME}    2    1    12345
    Save Workbook
