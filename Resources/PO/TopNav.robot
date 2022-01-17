*** Settings ***
Library  SeleniumLibrary 

*** Variables ***
${TOP_NAV_TEAM_LINK} =  xpath=//*[@id="bs-example-navbar-collapse-1"]/ul/li[5]/a
${TOP_NAV_SERVICES_LINK} =  //*[@id="bs-example-navbar-collapse-1"]/ul/li[2]/a
${TOP_NAV_PORTFOLIO_LINK} =  //*[@id="bs-example-navbar-collapse-1"]/ul/li[3]/a
${TOP_NAV_ABOUT_LINK} =  //*[@id="bs-example-navbar-collapse-1"]/ul/li[4]/a
${TOP_NAV_CONTACT_LINK} =  //*[@id="bs-example-navbar-collapse-1"]/ul/li[6]/a

*** Keywords ***
Select the "Team" page
    Click Element  ${TOP_NAV_TEAM_LINK}
    Sleep  3s
Select the "Services" page
    Click Element  ${TOP_NAV_SERVICES_LINK}
    Sleep  3s
Select the "Portfolio" page
    Click Element  ${TOP_NAV_PORTFOLIO_LINK}
    Sleep  3s
Select the "About" page
    Click Element  ${TOP_NAV_ABOUT_LINK}
    Sleep  3s
Select the "Contact" Page
    Click Element  ${TOP_NAV_CONTACT_LINK}
    Sleep  3s
    
    