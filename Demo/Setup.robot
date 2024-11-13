*** Settings ***

Suite Setup    Log To Console    Open Browserr
Suite Teardown    Log To Console    Close Browser

Test Setup    Log To Console    Test Start
Test Teardown    Log To Console    Test Done

*** Test Cases ***

Tc1
    Log To Console    TC1
    
Tc2
    Log To Console    TC2
    
Tc3
    Log To Console    TC3