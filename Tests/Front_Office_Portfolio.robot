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
Portfolio section contains right section names
    FrontOfficeApp.Go to the "Portfolio" page 
    FrontOfficeApp.Verify "Portfolio" sections names
Portfolio section Mouse actions
    FrontOfficeApp.Go to the "Portfolio" page 
    FrontOfficeApp.Verify Portfolio Mouse Actions
Click on the first area in "Portfolio" section opens a modal
    FrontOfficeApp.Go to the "Portfolio" page 
    FrontOfficeApp.Click on the first section