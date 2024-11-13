*** Settings ***
Library     SeleniumLibrary
*** Test Cases ***
Scroll

        Open Browser    https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html      chrome
        Maximize Browser Window
        Sleep    3
        Execute Javascript   window.scroll(0,4000)

        Sleep    3



        Execute Javascript  window.scroll(0,-4000)
        Sleep    3

        Scroll Element Into View    //*[contains(text(),"Checkbox Should Be Selected")]
        
        Sleep    3
        
        Execute Javascript      window.scrollTo(0,document.body.scrollHeight)
        Sleep    3