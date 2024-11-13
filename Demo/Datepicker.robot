*** Settings ***
Library    SeleniumLibrary
Library    DataDriver   ../Datas/Date.xlsx    sheet_name=Sheet2


*** Test Cases ***



Datepicker1

    Open Browser    https://demo.automationtesting.in/Datepicker.html    chrome
    Click Element    id:datepicker1

#Month

    ${month}=    Get Text    //span[@class='ui-datepicker-month']
    Log To Console    ${month}






    WHILE    $month != ${ExMonth}


             Click Element    //span[@class='ui-icon ui-icon-circle-triangle-w']

             ${month}=    Get Text    //span[@class='ui-datepicker-month']
             Log To Console    ${month}
    END

#Year
    #${year}=    Get Text    //span[@class='ui-datepicker-year']
    #Log To Console    ${year}


    #WHILE    $year != '2023'

     #        Click Element    //span[@class='ui-icon ui-icon-circle-triangle-w']

       #      ${year}=    Get Text    //span[@class='ui-datepicker-year']
          #   Log To Console    ${year}
    #END

#Date
    ${dates}=    Get Text    //table[@class='ui-datepicker-calendar']
    Log To Console    ${dates}
    Click Element    //*[contains(text(),"13")]







