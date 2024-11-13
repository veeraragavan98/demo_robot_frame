*** Settings ***
Library    SeleniumLibrary
Resource    ../ResourcePOM/keywords.robot
Resource    ../Test case/DatasPOM.robot
Test Template   Adacatin



*** Test Cases ***
Testing
    Adacatin    ${username}    ${password}
*** Keywords ***


Adacatin
    [Arguments]    ${username}    ${password}
    launch    ${url}    ${browername}
    Input_Username    ${username}
    Input_Password1    ${password}
    Click_Login




