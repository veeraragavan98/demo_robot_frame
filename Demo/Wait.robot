*** Settings ***

Library    SeleniumLibrary

*** Variables ***




*** Test Cases ***
register
    urllaunch
    Maxi
    Input Text    //input[@placeholder='First Name']    veera

    Sleep    5

    Input Text    //input[@placeholder='Last Name']     ragavan

    Set Selenium Speed    3
    Input Text    //input[@type='email']    9gtext@gmail.com
    ${seleniumsppen}=   Get Selenium Speed
    Log To Console    ${seleniumsppen}


    Input Text    //input[@type='tel']    98432145678
    Input Text    //textarea[@rows='3']    thiruvarur
    Select Radio Button    radiooptions   Male
    Select Checkbox    Movies
    Select Checkbox    Cricket

*** Keywords ***
urllaunch
    Open Browser    https://demo.automationtesting.in/Register.html    chrome

Maxi
    Maximize Browser Window