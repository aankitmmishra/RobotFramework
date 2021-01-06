*** Settings ***
Library    Selenium2Library    


*** Variables ***
${Browser}  Chrome
${URL}  http://gblon-tmappeg03:8080/prweb/H_Lt67Ndw0p8QGbv8lt31VFzpBg4idaI*/!STANDARD?



*** Keyword ***
Login to TC Application
    [Arguments]  ${Username}  ${Password}
    Set Selenium Speed    0.5
    Set Selenium Timeout    10
    Set Selenium Implicit Wait    10
    ${currentTime}=     Get Time    
    Open Browser    ${URL}    ${Browser}
    Maximize Browser Window
    Input Text    xpath://input[@id='txtUserID']    ${Username}
    Input Text    xpath://*[@id="txtPassword"]    ${Password}
    Click Button    xpath://button[@id='sub']  
    Capture Page Screenshot    .Screenshots/TC001.png     
    ${seleniumSpeed}=     Get Selenium Speed 
    ${SeleniumTimeout}=    Get Selenium Timeout
    ${SeleniumImplicitwait}=    Get Selenium Implicit Wait
    Log to Console     ${seleniumSpeed}             
    Log to Console     ${SeleniumTimeout} 
    Log To Console     ${SeleniumImplicitwait}    
    Close Browser
   