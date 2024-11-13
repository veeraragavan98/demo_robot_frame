*** Settings ***

Library    SeleniumLibrary

*** Variables ***




*** Test Cases ***
register
    urllaunch
    Maxi
    Set Selenium Timeout    5
    Input Text    //input[@placeholder='First Name']    veera
    Input Text    //input[@placeholder='Last Name']     ragavan
    Input Text    //input[@type='email']    9gtext@gmail.com
    Input Text    //input[@type='tel']    98432145678
    Set Selenium Implicit Wait    5
    Input Text    //textarea[@rows='3']    thiruvarur
    Select Radio Button    radiooptions   Male
    ${impicitwait}=     Get Selenium Implicit Wait
    Log To Console    ${impicitwait}
    Select Checkbox    Movies
    Select Checkbox    Cricket

*** Keywords ***
urllaunch
    Open Browser    https://demo.automationtesting.in/Register.html    chrome

Maxi
    Maximize Browser Window