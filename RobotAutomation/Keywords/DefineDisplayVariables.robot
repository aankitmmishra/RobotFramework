*** Settings ***
Library    Selenium2Library    
Library    Collections    


*** Variables ***




*** Keyword ***
TC_001 Variable Test
    ${Var} =   set variable    HellowWorld
    log to console  ${Var} 
    
TC_001 Create List
    @{List1}   create list   xyz    123    23.40    xyz123
    ${listlength}     Get Length    ${List1}
    Log To Console     ${listlength}
    ${listdata}=    Get From List    ${List1}    3
    Log To Console      ${listdata}
    
TC_001 For Loop
    @{List1}   create list   xyz    123    23.40    xyz123
    FOR    ${i}    IN     @{List1}    
    Log To Console    ${i}     
    END  
    
TC_001 Store Variables
    ${Variable}=    Set Variable    Log To Console       
    Run Keyword    ${Variable}     aankit.mmishra@gmail.com     
    
TC_001 Conditional Keyword
    ${Variable}=    Set Variable    YES   
    Run Keyword If    '${Variable}'=='YES'    Log To Console     Value Found             
    Run Keyword if    '${Variable}'=='NO'    Log To Console     Value Not Found  
    
TC_001 Go to Go Back and Get Location
    Open Browser    https://www.google.com/    Chrome
    Go To    https://timesofindia.indiatimes.com/
    Go Back 
    Close Browser   
    
TC_001 Execute Java Script and Mouse movements
    Open Browser    https://www.google.com/    Chrome
    Go To    https://timesofindia.indiatimes.com/
    Maximize Browser Window
    #Execute Javascript    window.scrollTo(0, 1000)
    Sleep    5 
    #Open Context Menu    xpath://*[@id="citywidget"]/div[2]/h2/a
    #Mouse Over    xpath://*[@id="citywidget"]/div[2]/h2/a 
    Click Element    //*[@id="container"]/div[6]/div/div/div[2]/div[2]/span[2]/span    
    Press Key    //*[@id="toi-login"]/div[1]/form/ul/li[1]/p/input    abc@gmail.com
    Press Key    //*[@id="sso-signInButtonDiv"]/input    \\13
   
    
#Watch section 8 video 52 for wait videos very useful


       
      
  