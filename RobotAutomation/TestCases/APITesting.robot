***Settings***
Library    RequestsLibrary    


***Variables***
${Base_URL}    http://thetestingworldapi.com/
${id}        108193



*** Test Cases ***
TC_001_Get_Request
    Create Session    Get_Student_Details    ${Base_URL}    
    ${response}=    Get On Session      Get_Student_Details       api/studentsDetails
   # Log To Console    ${response.status_code}  
    Log To Console    ${response.content}  
    
TC_002_Get_by_Id
    Create Session    fetchdata    ${Base_URL}    
    ${response1}=    Get On Session      fetchdata       api/studentsDetails/${id}
    Log To Console    ${response1.status_code}  
    Log To Console    ${response1.content}   