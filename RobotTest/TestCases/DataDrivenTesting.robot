*** Settings ***
Documentation     This is a test got Git test test test test test test
Library           Selenium2Library    timeout=10

*** Variables ***
${BROWSER}    chrome
${SLEEP}    3

*** Test Cases ***
PHPTRAVELS | Travel Technology Partner test
    Set Selenium Speed    1
    Open Browser    https://www.phptravels.net/home    ${BROWSER}
    Maximize Browser Window
    Click Element     //span[text()='Search by Hotel or City Name']    
    Input Text    //*[@id="select2-drop"]/div/input    London    
    Click Element    //*[@id="select2-drop"]/ul/li/ul/li[1]/div
    Input Text    //input[@name="checkin"]    31-03-2021
    Input Text    //input[@name="checkout"]    30-04-2021
    Click Element    //button[@class="btn btn-primary btn-block"]
    Click Link    //div[@Class='ml-auto rtl-mr-auto o1']/a 

    Close Browser