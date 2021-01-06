*** Settings ***
Library    Selenium2Library    


*** Variables ***

${userInfoLink}    //*[@id="navbar-rigt-menu"]/li[4]/a         
${logoutLink}    //*[@id="navbar-rigt-menu"]/li[4]/ul/li[1]/a    
${switchAccount}    //*[@id="navbar-rigt-menu"]/li[4]/ul/li[2]/a
${chooseFromOptionAccount}    //button[@id='getAccount']
${chooseFromOptionQDOS}     //button[@id='getQdos']   
${proceedButton}    //a[contains(text(),'Proceed')]
${selectAccount}    //tbody/tr[10]/td[1]/input[1]
${openAssessementLink}    //*[@id="admin-navbar-menu"]/li[3]/a
${switchAccountUserInfo}    //*[@id="navbar-rigt-menu"]/li[5]/a
${switchAccountLogOutLink}    //*[@id="navbar-rigt-menu"]/li[5]/ul/li[1]/a
${switchToAccountLink}    //*[@id="navbar-rigt-menu"]/li[5]/ul/li[2]/a
${nameSortingButton}    //*[@id="AccountsGrid"]/thead/tr[1]/th[2]


*** Keyword ***

 
Switch Account Emulation Acc
    [Arguments]   ${i}
    Click Link    ${userInfoLink}  
    Click Link    ${switchAccount}    
    Click Button    ${chooseFromOptionAccount}    
    Click Element    //tbody/tr[${i}]/td[1]/input[1]    
    Click Link    ${proceedButton}
    Click Link    ${openAssessementLink}  
    Click Link    ${switchAccountUserInfo}    
    Click Link    ${switchToAccountLink}
    Click Link    ${proceedButton}  
    Click Link    ${userInfoLink}    
    Click Link    ${logoutLink}  
    Close Browser   
     
    
Switch Account Emulation Desc
    [Arguments]   ${i}
    Click Link    ${userInfoLink}  
    Click Link    ${switchAccount}    
    Click Button    ${chooseFromOptionAccount}  
    Click Element   ${nameSortingButton}      
    Click Element    //tbody/tr[${i}]/td[1]/input[1]    
    Click Link    ${proceedButton}
    Click Link    ${openAssessementLink}  
    Click Link    ${switchAccountUserInfo}    
    Click Link    ${switchToAccountLink}
    Click Link    ${proceedButton}  
    Click Link    ${userInfoLink}    
    Click Link    ${logoutLink}  
    Close Browser   
 
    
Switch Account Emulation All
    [Arguments]   ${i}
    Click Link    ${userInfoLink}  
    Click Link    ${switchAccount}    
    Click Button    ${chooseFromOptionAccount}    
    Click Element    //tbody/tr[${i}]/td[1]/input[1]    
    Click Link    ${proceedButton}
    Click Link    ${openAssessementLink}  
    Click Link    ${switchAccountUserInfo}    
    Click Link    ${switchToAccountLink}
    Click Link    ${proceedButton}  
        
      
          