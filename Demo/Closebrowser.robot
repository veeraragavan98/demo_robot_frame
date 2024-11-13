*** Settings ***

Library    SeleniumLibrary

*** Variables ***




*** Test Cases ***

close
    Open Browser    https://demo.automationtesting.in/Register.html    chrome
    Sleep    2
    Close Browser

    Open Browser    https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html    chrome


    Open Browser    https://www.amazon prime.in    chrome
    Sleep    2
    Close All Browsers