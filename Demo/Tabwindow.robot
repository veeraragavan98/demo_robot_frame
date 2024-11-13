*** Settings ***

Library    SeleniumLibrary

*** Variables ***




*** Test Cases ***
wintab
     Open Browser    https://demo.automationtesting.in/Windows.html    chrome
     max
     Click Element    //*[contains(text(),"click")][1]
     Switch Window     Selenium logo green
     
     Sleep    3
     Click Element     //*[contains(text(),"Blog")]
     


*** Keywords ***
max
    Maximize Browser Window