*** Settings ***

Library    SeleniumLibrary
Library    DataDriver    ../Datas/Book.xlsx    sheet_name=Sheet1


*** Keywords ***
LoginData
    [Arguments]     ${username}     ${password1}
    Set Global Variable    ${username}
    Set Global Variable    ${password}