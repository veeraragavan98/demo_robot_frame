*** Settings ***

Library    SeleniumLibrary
Library    DataDriver    ../Datas/Book.xlsx    sheet_name=Sheet1
Test Template    Testdata

*** Test Cases ***
Test1
    Testdata    ${username}    ${password}
*** Keywords ***

Testdata
    [Arguments]     ${username}     ${password}
    Set Global Variable    ${username}
    Set Global Variable    ${password}
    Open Browser    https://adactinhotelapp.com/    chrome

    Maximize Browser Window

    Input Text    id:username    ${username}

    Input Text    id:password     ${password}
    Click Element    //input[@id='login']


    Input Text    //input[@type='email']    9gtext@gmail.com

TestData2
    [Arguments]    ${username}    ${password}
    Log To Console    ${username}
    Log To Console    ${password}

