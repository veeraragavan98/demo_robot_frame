*** Settings ***

Library    SeleniumLibrary

*** Variables ***




*** Test Cases ***
register
    urllaunch
    Maxi
    Input Text    //input[@placeholder='First Name']    veera

    Input Text    //input[@placeholder='Last Name']     ragavan

    Input Text    //input[@type='email']    9gtext@gmail.com
    Input Text    //input[@type='tel']    98432145678
    Wait Until Element Contains    //input[@type='tel']    number
    ${text}=    Get Text    locator

    Input Text    //textarea[@rows='3']    thiruvarur
    Select Radio Button    radioptions   Male
    Select Checkbox    Movies
    Select Checkbox    Cricket

*** Keywords ***
urllaunch
    Open Browser    https://demo.automationtesting.in/Register.html    chrome

Maxi
    Maximize Browser Window