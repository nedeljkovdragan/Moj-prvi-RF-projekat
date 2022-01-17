*** Settings ***
Library  SeleniumLibrary
Resource  ./PO/Landing.robot
Resource  ./PO/TopNav.robot
Resource  ./PO/Team.robot
Resource  ./PO/Services.robot
Resource  ./PO/Portfolio.robot
Resource  ./PO/About.robot
Resource  ./PO/Contact.robot

*** Variables ***

*** Keywords ***
Go to Landing page
    Landing.Navigate To
    Landing.Verify Page Loaded
#######################################################################################
Go to the "Services" page    
    TopNav.Select the "Services" page
    Services.Verify Page Loaded
Verify "E-Commerce" section text
    Services."E.Commerce" contains the right text
#######################################################################################
Go to the "Portfolio" page 
    TopNav.Select the "Portfolio" page
Verify "Portfolio" sections names
    Portfolio.Portfolio section names are correct
Verify Portfolio Mouse Actions
    Portfolio.Mouse actions are working
Click on the first section
    Portfolio.Click on the first section opens a modal
#######################################################################################
Go to the "About" page
    TopNav.Select the "About" page
"Our Humble Beginnings" section should have "2009-2011" years in it
    About."Our Humble Beginnings" have "2009-2011" years in it
#######################################################################################
Go to the "Team" page
    TopNav.Select the "Team" page
    Team.Verify Page Loaded
Validate the "Team" page Title
    Team.Verify Title is Correct
Validate the "Team" page Bottom text
    Team.Verify that Bottom Text is correct
Validate Diana Pertersen's job title
    Team.Diana Pertersen job title is correct
Validate Bryan Lamb's job title
    Team.Bryan Lamb's job title is correct
Validate Larry Parker's job title
    Team.Larry Parker's job title is correct
#######################################################################################
Go to the "Contact" page 
    TopNav.Select the "Contact" Page
Verify that a user can send a message
    Contact.A user can send a message