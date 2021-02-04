*** Settings ***
Library    Selenium2Library            


*** Variables ***

${url}    http://automationpractice.com/index.php        



*** Keyword ***
Launch the website
    Set Selenium Speed    5
    Open Browser     ${url}    Chrome
    Maximize Browser Window
    ${title} =    Get Title
    Log to Console    ${title}    
    Close Browser
    
    
    
    
    
    
    
    
    
       
     
    
 
        
      
          