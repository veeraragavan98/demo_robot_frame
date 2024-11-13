*** Settings ***
Library     SeleniumLibrary

*** Test Cases ***


Forloop1
    FOR    ${i}    IN RANGE   1  5

        Log To Console    ${i}

    END