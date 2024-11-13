*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
Right click

        Open Browser    https://demo.automationtesting.in/Selectable.html       chrome
        Maximize Browser Window
        Click Element    //*[contains(text(),"Default Functionality ")]

        Double Click Element    //*[contains(text(),"Sakinalium - Method Chaining")]

        Open Context Menu    //*[contains(text(),"Sakinalium - Method Chaining")]
        
        Sleep    3
        Go To    https://demo.automationtesting.in/Static.html

        Drag And Drop    //img[@id='angular']    //div[@id='droparea']
        Sleep    3