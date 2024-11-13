*** Settings ***

Library    SeleniumLibrary
Library    getVariable.py

*** Variables ***
${MY_VARIABLE}    Hello from Robot Framework



*** Test Cases ***
Navi
     Open Browser    https://demo.automationtesting.in/Windows.html    chrome
     Sleep    5
     ${text}=    Get Text    //*[contains(text(),"Open New Tabbed Windows ")]
     Log To Console    ${text}

