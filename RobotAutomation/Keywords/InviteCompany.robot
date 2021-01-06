*** Settings ***
Library    Selenium2Library    


*** Variables ***

${openAssessmenMenuBar}    //*[@id="admin-navbar-menu"]/li[3]/div/a    
${openAssessment}    //*[@id="admin-navbar-menu"]/li[3]/div/ul/li[1]/a
${dueAssessmentMenuBar}    //*[@id="admin-navbar-menu"]/li[4]/div/a
${dueAssessment}    //*[@id="admin-navbar-menu"]/li[4]/div/ul/li[1]/a
${userLink}    //*[@id="navbar-rigt-menu"]/li[5]/a
${logout}    //*[@id="navbar-rigt-menu"]/li[5]/ul/li/a

    



*** Keyword ***

 
Navigate through Account User Profile
    Click Link    ${openAssessmenMenuBar} 
    Click Link    ${openAssessment}   
    Click Link    ${dueAssessmentMenuBar}    
    Click Link    ${dueAssessment}    
    Click Link    ${userLink}    
    Click Link    ${logout}    
    Close Browser  
    

          