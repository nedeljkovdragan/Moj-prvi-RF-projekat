*** Settings ***
Documentation  Testing of the "Team" section
Resource  ../Resources/FrontOfficeApp.robot
Resource  ../Resources/CommonWebApp.robot
Test Setup  Begin Web Test
Test Teardown  End Web Test
# robot -d results tests/front_office.robot

*** Variables ***
${BROWSER} =  chrome
${URL} =  https://www.robotframeworktutorial.com/front-office/

*** Test Cases ***
The bottom of the section contains the right text
    [Documentation]  Bottom of the section text
    [Tags]  test1
    FrontOfficeApp.Go to the "Team" page
    FrontOfficeApp.Validate the "Team" page Bottom text
Should be able to access "Team" page
    [Documentation]  This is test 1
    [Tags]  test2
    FrontOfficeApp.Go to Landing page
    FrontOfficeApp.Go to the "Team" page
"Team" page should match requirements
    [Documentation]  This is test 2
    [Tags]  test3
    FrontOfficeApp.Go to Landing page
    FrontOfficeApp.Go to the "Team" page
    FrontOfficeApp.Validate the "Team" page Title
Verify that "Bryan Lamb" job is CTO
    FrontOfficeApp.Go to the "Team" page
    FrontOfficeApp.Validate Bryan Lamb's job title
Verify that "Larry Parker" job is Lead Marketer  
    FrontOfficeApp.Go to the "Team" page  
    FrontOfficeApp.Validate Larry Parker's job title
Verify that "Diana Pertersen" job is Lead Developer
    FrontOfficeApp.Go to the "Team" page
    FrontOfficeApp.Validate Diana Pertersen's job title

    
 
 