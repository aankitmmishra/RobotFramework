*** Settings ***
Library    Selenium2Library    


*** Variables ***
${browser}  Chrome
${url}    https://www.qdosstatusreviewuat.tmhcc.com
${usernameQdosUser}    qdosuser@uat.com
${password}    Password@123
${usernameQdosAccountUser}    qdosagencyuser@uat.com    
# ${url}    http://qdos-statusreview-test.tmhcc.com/en
# ${username}    qdosuser@test.com
${usernameXpath}    //input[@id='EmailAddress']
${passwordXpath}    //input[@id='Password']
${submitButton}    //button[@type='submit']


*** Keyword ***
Load Url and Login as Qdos User
    Set Selenium Speed    1
    Set Selenium Timeout    30
    Set Selenium Implicit Wait    30
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    ${usernameXpath}    ${usernameQdosUser} 
    Input Text    ${passwordXpath}    ${password}
    Click Button    ${submitButton} 
    

Load Url and Login as Account User
    Set Selenium Speed    1
    Set Selenium Timeout    30
    Set Selenium Implicit Wait    30
    Open Browser    ${url}    ${browser}
    Maximize Browser Window
    Input Text    ${usernameXpath}    ${usernameQdosAccountUser}
    Input Text    ${passwordXpath}    ${password}
    Click Button    ${submitButton} 