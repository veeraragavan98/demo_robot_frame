*** Settings ***
Library    SeleniumLibrary
Resource    ./POM/Locators.py
*** Keywords ***

launch1
    [Arguments]     ${url}      ${browername}
    Open Browser    ${url}      ${browername}
    Maximize Browser Window



Get tittle1
    ${Gettittle}=      Get Title
    [Return]        ${Gettittle}

Contains wait1
        [Arguments]     ${xpath}        ${contains}
        Wait Until Element Contains     ${xpath}        ${contains}
frame input1
    [Arguments]     ${frame path}   ${input box path}    ${Inputs}
    Select Frame    ${frame path}
     Input Text    ${input box path}     ${Inputs}