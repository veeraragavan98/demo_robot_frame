*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***
screen

    Open Browser    https://demo.automationtesting.in/Register.html     chrome

    Maximize Browser Window

    Capture Page Screenshot     C:/Users/BVeeraragavan/PycharmProjects/Acxhange/Sreeenshot/page.png

    Capture Element Screenshot    //img[@id='imagetrgt']     C:/Users/BVeeraragavan/PycharmProjects/Acxhange/Sreeenshot/logo.png
