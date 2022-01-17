*** Settings ***
Library  SeleniumLibrary 
*** Variables ***
${TEAM_HEADER_LABEL} =  //*[@id="team"]/div/div[1]/div/h2
${TEAM_BOTTOM_TEXT} =  //*[@id="team"]/div/div[3]/div/p
${DIANA_JOB_TITLE} =  //*[@id="team"]/div/div[2]/div[3]/div/p
${BRYAN_JOB_TITLE} =  //*[@id="team"]/div/div[2]/div[1]/div/p
${LARRY_JOB_TITLE} =  //*[@id="team"]/div/div[2]/div[2]/div/p

*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  ${TEAM_HEADER_LABEL}
Verify Title is Correct
    Element Text Should Be  ${TEAM_HEADER_LABEL}  OUR AMAZING TEAM
Verify that Bottom Text is correct
    Element Text Should Be  ${TEAM_BOTTOM_TEXT}  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Aut eaque, laboriosam veritatis, quos non quis ad perspiciatis, totam corporis ea, alias ut unde.
Bryan Lamb's job title is correct
    Element Text Should Be  ${BRYAN_JOB_TITLE}  CTO
Larry Parker's job title is correct
    Element Text Should Be  ${LARRY_JOB_TITLE}  Lead Marketer
Diana Pertersen job title is correct
    Element Text Should Be  ${DIANA_JOB_TITLE}  Lead Developer

