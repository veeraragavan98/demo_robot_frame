*** Settings ***

Library    SeleniumLibrary

*** Test Cases ***

TableRow
    Open Browser    https://cosmocode.io/automation-practice-webtable/    chrome
    Maximize Browser Window
    
    ${row count}=    Get Element Count    //table[@id='countries']//tr
    Log To Console    ${row count}
    
    ${column count}=     Get Element Count    //table[@id='countries']//tr[4]//td
    Log To Console    ${column count}
    
    Get Text    //table[@id='countries']//tr[4]//td[3]
    
    Table Column Should Contain    //table[@id='countries']//tr[4]//td    3    Algiers
    
    Table Row Should Contain    //table[@id='countries']//tr    3    	Tirane

    Table Cell Should Contain    //table[@id='countries']    3    4    		Lek
