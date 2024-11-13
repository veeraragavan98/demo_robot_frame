*** Settings ***
Library    SeleniumLibrary
Variables    ./POM/Locators.py
Library    DataDriver    ../Datas/Book.xlsx    sheet_name=Sheet1
Library    DataDriver    ../Datas/Book.xlsx    sheet_name=Sheet2


*** Variables ***

${url}   https://adactinhotelapp.com/
${browername}    chrome

*** Keywords ***


launch
    [Arguments]     ${url}      ${browername}
    Open Browser    ${url}      ${browername}
    Maximize Browser Window

Input_Username  
    [Arguments]    ${username}
    Input Text    ${Input_Username}    ${username}
    
Input_Password1

    [Arguments]    ${password}
    Input Text    ${Input_Pass}    ${password}
    
Click_Login

    Click Element    ${Btn_submit}