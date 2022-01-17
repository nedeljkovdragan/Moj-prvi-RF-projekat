*** Settings ***
Documentation  Testing of the "Services" section
Resource  ../Resources/FrontOfficeApp.robot
Resource  ../Resources/CommonWebApp.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test
# robot -d results tests/front_office.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.robotframeworktutorial.com/front-office/

*** Test cases ***
Verify that the user can send a message after entering valid credentials in all fields
    TopNav.Select the "Contact" Page
    FrontOfficeApp.Verify that a user can send a message