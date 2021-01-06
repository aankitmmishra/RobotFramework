*** Settings ***
Library    Selenium2Library    
Resource  ../Keywords/QdosLoginPage.robot
Resource  ../Keywords/AssessmentDashboard.robot
Resource  ../Keywords/InviteCompany.robot
Suite Teardown    Suite shutdown


*** Variables ***

*** Keywords ***
Suite shutdown
    Close Browser




*** Test Cases ***
TC001 Qdos User Login and Switch Test
    Load Url and Login as Qdos User
    Switch Account Emulation Acc   1
    
TC001 Qdos Account User Loogin and Navigation
    Load Url and Login as Account User
    Navigate through Account User Profile
    

TC002 Qdos User Login and Switch Test
    Load Url and Login as Qdos User
    Switch Account Emulation Acc    2
    
TC002 Qdos Account User Loogin and Navigation
    Load Url and Login as Account User
    Navigate through Account User Profile
    
TC003 Qdos User Login and Switch Test
    Load Url and Login as Qdos User
    Switch Account Emulation Acc    3
    
TC003 Qdos Account User Loogin and Navigation
    Load Url and Login as Account User
    Navigate through Account User Profile
    
TC004 Qdos User Login and Switch Test
    Load Url and Login as Qdos User
    Switch Account Emulation Acc    4
    
TC004 Qdos Account User Loogin and Navigation
    Load Url and Login as Account User
    Navigate through Account User Profile
    
TC005 Qdos User Login and Switch Test
    Load Url and Login as Qdos User
    Switch Account Emulation Acc    5
    
TC005 Qdos Account User Loogin and Navigation
    Load Url and Login as Account User
    Navigate through Account User Profile
    
TC006 Qdos User Login and Switch Test
    Load Url and Login as Qdos User
    Switch Account Emulation Desc   6
    
TC006 Qdos Account User Loogin and Navigation
    Load Url and Login as Account User
    Navigate through Account User Profile
    

TC007 Qdos User Login and Switch Test
    Load Url and Login as Qdos User
    Switch Account Emulation Desc   7
    
TC007 Qdos Account User Loogin and Navigation
    Load Url and Login as Account User
    Navigate through Account User Profile
    
TC008 Qdos User Login and Switch Test
    Load Url and Login as Qdos User
    Switch Account Emulation Desc    8
    
TC008 Qdos Account User Loogin and Navigation
    Load Url and Login as Account User
    Navigate through Account User Profile
    
TC009 Qdos User Login and Switch Test
    Load Url and Login as Qdos User
    Switch Account Emulation Desc   9
    
TC009 Qdos Account User Loogin and Navigation
    Load Url and Login as Account User
    Navigate through Account User Profile
    
TC010 Qdos User Login and Switch Test
    Load Url and Login as Qdos User
    Switch Account Emulation Desc   10
    
TC010 Qdos Account User Loogin and Navigation
    Load Url and Login as Account User
    Navigate through Account User Profile
    
TC011 Qdos User Login and Switch Test All
    Load Url and Login as Qdos User
    Switch Account Emulation All    1
    Switch Account Emulation All    2
    Switch Account Emulation All    3
    Switch Account Emulation All    4
    Switch Account Emulation All    5
    Switch Account Emulation All    6
    Switch Account Emulation All    7
    Switch Account Emulation All    8
    Switch Account Emulation All    9
    Switch Account Emulation All    10
    
