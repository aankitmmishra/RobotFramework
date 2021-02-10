*** Settings ***
Library    Selenium2Library  
Library    ../Functions/ReadLocator.py             


*** Variables ***

${URLpath}        LandingPageLocator.url


*** Keywords ***
 Launch the website
    Set Selenium Speed    5
    #LandingPageLocator.url
    ${url} =     Element Locator   ${URLpath}
    Open Browser     ${url}    Chrome
    Maximize Browser Window
    ${title} =    Get Title
    Log to Console    ${title}
    Close Browser
     
    



Element Locator
    [Arguments]    ${locator}
    ${result} =    read_locator_from_json  ${locator}
    [Return]      ${result}
    

    
    
    
    
    
    
    
    
    
    
       
     
    
 
        
      
          