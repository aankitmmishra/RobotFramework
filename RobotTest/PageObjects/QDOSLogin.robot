*** Settings ***
Library    Selenium2Library  
Library    ../Functions/ReadLocator.py

   


*** Variables ***
${BROWSER}    Chrome


*** Keywords ***
Login to Qdos
    Set Selenium Speed    1
    ${url}=  Element Locator  QDOSLogin.url
    Open Browser    ${url}    ${BROWSER}
    Maximize Browser Window
    ${usernamexpath}=  Element Locator  QDOSLogin.usernamxpath
    ${username}=    Element Locator    QDOSLogin.username
    Input Text    ${usernamexpath}    ${username}  
    ${passwordxpath}=  Element Locator  QDOSLogin.passwordxpath
    ${password}=    Element Locator    QDOSLogin.password 
    Input Text    ${passwordxpath}    ${password}
    ${Loginbutton}=  Element Locator  QDOSLogin.loginbutton
    Click Button    ${Loginbutton}       


Element Locator
    [Arguments]    ${locator}
    ${result} =    read_locator_from_json  ${locator}
    [Return]      ${result}