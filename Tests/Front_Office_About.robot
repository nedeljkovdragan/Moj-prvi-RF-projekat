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
Verify that the "Our Humble Beginnings" section has "2009-2011" years in it
    FrontOfficeApp.Go to the "About" page 
    FrontOfficeApp."Our Humble Beginnings" section should have "2009-2011" years in it