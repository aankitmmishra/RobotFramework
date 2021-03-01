*** Settings ***
Documentation     This is a test
Library  Selenium2Library    timeout=10
Resource  ../PageObjects/QDOSLogin.robot
Suite Teardown    Suite shutdown

*** Variables ***


*** Test Cases ***
Create a New Account
    Login to Qdos
        

*** Keywords ***
Suite shutdown
    Close Browser