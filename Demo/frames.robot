*** Settings ***

Library    SeleniumLibrary
Resource    ../Resourses/resource.robot

*** Variables ***




*** Test Cases ***
Frame
     Open Browser    https://demo.automationtesting.in/Frames.html    chrome
     max
     frame input    //iframe[@id='singleframe']    //input[@type='text']    Ragav


*** Keywords ***
max
    Maximize Browser Window