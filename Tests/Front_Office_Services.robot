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

*** Test Cases ***
"E-Commerce" section contains the right text
    FrontOfficeApp.Go to the "Services" page 
    FrontOfficeApp.Verify "E-Commerce" section text
    Sleep  2s
