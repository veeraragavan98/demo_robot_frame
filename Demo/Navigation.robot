*** Settings ***

Library    SeleniumLibrary




*** Test Cases ***
Navi
     Open Browser    https://demo.automationtesting.in/Windows.html    chrome
     max
     ${lo}=     Get Location
     Log To Console    ${lo}

     Go To   https://www.facebook.com/
     Sleep    2
     ${lo}=     Get Location
     Log To Console    ${lo}

     Go Back





*** Keywords ***
max
    Maximize Browser Window