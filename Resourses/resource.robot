*** Settings ***
Library    SeleniumLibrary
Resource    ./POM/Locators.py
*** Keywords ***

launch
    [Arguments]     ${url}      ${browername}
    Open Browser    ${url}      ${browername}
    Maximize Browser Window



Get tittle
    ${Gettittle}=      Get Title
    [Return]        ${Gettittle}

Contains wait
        [Arguments]     ${xpath}        ${contains}
        Wait Until Element Contains     ${xpath}        ${contains}
frame input
    [Arguments]     ${frame path}   ${input box path}    ${Inputs}
    Select Frame    ${frame path}
     Input Text    ${input box path}     ${Inputs}



