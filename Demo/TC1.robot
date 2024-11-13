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
    Input Text    //textarea[@rows='3']    thiruvarur
    Select Radio Button    radiooptions   Male
    Select Checkbox    Movies
    Select Checkbox    Cricket
    Sleep    3
    Select From List By Label    //select[@id='countries']     Select Country
    Select From List By Value    //select[@id='Skills']    Android
    Select From List By Value    //select[@id='country']    India
    Select From List By Value    //select[@id='yearbox']    1998
    Select From List By Value    //select[@placeholder='Month']    February
    Select From List By Index    //select[@id='daybox']    13
    Sleep    5
    Click Element    //div[@id='msdd']
    Select From List By Index    //div[@id='msdd']    0
    Select From List By Index    //div[@id='msdd']    1
    Select From List By Index    //div[@id='msdd']    4
    Sleep    5
    Input Text    //input[@id='firstpassword']    RAGAVAN@
    Input Text    //input[@id='secondpassword']    RAGAVAN@
    Click Element    //button[@id='submitbtn']

*** Keywords ***
urllaunch
    Open Browser    https://demo.automationtesting.in/Register.html    chrome

Maxi
    Maximize Browser Window
