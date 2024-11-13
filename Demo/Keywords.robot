*** Settings ***
Library     SeleniumLibrary
Resource    ../Resourses/resource.robot
Resource    ../Resourses/Reso.robot

*** Test Cases ***

Tc
    ${Gettittle}=   launch    https://robotframework.org/SeleniumLibrary/SeleniumLibrary.html    chrome
    Log To Console    ${Gettittle}
    Contains wait    //h2[@id='Introduction']    Introduction