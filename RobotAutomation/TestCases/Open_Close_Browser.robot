*** Settings ***
Library    Selenium2Library    
Resource  ../Keywords/LoginPage.robot
Resource  ../Keywords/DefineDisplayVariables.robot
Variables  ../VariableandXpath/Variables.py
Documentation    This is test again
Test Timeout    50s



*** Variables ***




*** Test Cases ***
TC001
    [Documentation]    This is a practice test
    [Timeout]    50s
  # Login to TC Application   ${UserName}  ${Password}
   TC_001 Variable Test
   TC_001 Create List
   TC_001 For Loop
   TC_001 Store Variables
   TC_001 Conditional Keyword
   #TC_001 Go to Go Back and Get Location
   TC_001 Execute Java Script and Mouse movements