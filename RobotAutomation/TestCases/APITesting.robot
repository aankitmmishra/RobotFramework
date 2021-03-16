***Settings***
Library    RequestsLibrary
Library    JSONLibrary    
Library    Collections        


***Variables***
${Base_URL}    http://thetestingworldapi.com/
${id}        108192
${Base_URL1}   https://reqres.in



*** Test Cases ***
TC_001_Get_Request
    &{header}=  Create Dictionary    Content-Type=application/json
    Create Session    Get_Student_Details    ${Base_URL}    headers=&{header}
    ${response}=    Get On Session      Get_Student_Details       api/studentsDetails
    Log To Console    ${response.status_code}  
    Log To Console    ${response.content}  
    
TC_002_Get_by_Id
    &{header}=  Create Dictionary    Content-Type=application/json 
    Create Session    fetchdata    ${Base_URL}   headers=&{header}     
    ${response1}=    Get On Session      fetchdata       api/studentsDetails/${id}
    Log To Console    ${response1.status_code} 
    ${actualcode}=  Convert To String    ${response1.status_code} 
    Should Be Equal    ${actualcode}    200  
    #Covert JSON to JSON from string and Get the specific list value from JSON
    @{firstNameList}=    get value from json   ${response1.json()}    data.first_name  
    #From the list get the specific value needed 
    ${firstName}=  Get From List    ${firstNameList}    0
    Log To Console    ${firstName}   
    should be equal      ${firstName}    sample string 2
    @{lastNameList}=    get value from json   ${response1.json()}    data.last_name  
    #From the list get the specific value needed 
    ${lastName}=  Get From List    ${lastNameList}    0
    Log To Console    ${lastName}   
    should be equal      ${lastName}    sample string 4
    

TC_003_Get_with_Param
    Create Session    GetParam    ${Base_URL1}    
    &{param}=  Create Dictionary    page=2
    ${response2}=   Get On Session     GetParam     /api/users     params=${param}  
    Log To Console    ${response2.json()}   
     
TC_004_Delete
    ${response4}=  DELETE On Session     fetchdata    api/studentsDetails/108193
    Log To Console    ${response4.status_code}    
    Log To Console    ${response4.content} 
    @{StatusList}=    get value from json   ${response4.json()}    status   
    ${status}=  Get From List    ${StatusList}    0
    Should Be Equal    ${status}    false
     
TC_005_AddNewData
    &{header}=  Create Dictionary    Accept=application/json
    Create Session    postsession    ${Base_URL}    headers=&{header}
    &{body}=  Create Dictionary    first_name=testings middle_name=man last_name=worlds date_of_birth=12/1/1990
    ${response5}=  POST on Session    postsession    api/studentsDetails     data=${body}    
    Log To Console    ${response5.status_code}  
    Log To Console    ${response5.content}       





    