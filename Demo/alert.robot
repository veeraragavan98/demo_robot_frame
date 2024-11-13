*** Settings ***

Library    SeleniumLibrary

*** Variables ***




*** Test Cases ***

close
    Open Browser    https://demo.automationtesting.in/Alerts.html    chrome
    Sleep    2
    Click Element    //button[@onclick='alertbox()']
    Handle Alert    accept
    Sleep    2
    Click Element    //button[@onclick='alertbox()']
    Handle Alert    dismiss
    Sleep    2
    Click Element    //button[@onclick='alertbox()']
    Handle Alert    leave
    Sleep    2
    Click Element    //button[@onclick='alertbox()']
    Alert Should Be Present     click
    Alert Should Not Be Present     demo