*** Settings ***
Library    Selenium2Library    
Resource  ../PageObjects/LandingPage.robot
Documentation    This is test again
Test Timeout    50s




*** Variables ***




*** Test Cases ***
TC001
    Launch the website
