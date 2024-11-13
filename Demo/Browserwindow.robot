*** Settings ***

Library    SeleniumLibrary


*** Variables ***




*** Test Cases ***
Frame
     Open Browser    https://demo.automationtesting.in/Windows.html    chrome
     max
     Sleep    2

     Open Browser    `https://www.facebook.com/ `   chrome
     max
     Sleep    2

     Open Browser   https://www.threads.net/?hl=en  chrome
     max
     Sleep    2

     Switch Browser   1
     ${tittle}=     Get Title
     Log To Console    ${tittle}



*** Keywords ***
max
    Maximize Browser Window