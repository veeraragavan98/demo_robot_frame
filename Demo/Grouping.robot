*** Settings ***

Library    SeleniumLibrary




*** Test Cases ***
urllaunch

    [Tags]    group1
    Open Browser
    Maxi
    Input Text    //input[@placeholder='First Name']    veera

    Input Text    //input[@placeholder='Last Name']     ragavan
Url2
    [Tags]    group2
     Open Browser
    Maxi
    Input Text    //input[@type='email']    9gtext@gmail.com
    Input Text    //input[@type='tel']    98432145678


*** Keywords ***
urllaunch
    Open Browser    https://demo.automationtesting.in/Register.html    chrome

Maxi
    Maximize Browser Window