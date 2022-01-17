*** Settings *** 
Library  SeleniumLibrary 

*** Variables ***
${SERVICES_TITLE} =  //*[@id="services"]/div/div[1]/div/h2
${E-COMMERCE_SECTION_TEXT} =  //*[@id="services"]/div/div[2]/div[1]/p
*** Keywords ***
Verify Page Loaded
    Wait Until Page Contains Element  ${SERVICES_TITLE}
"E.Commerce" contains the right text
    Element Text Should Be  ${E-COMMERCE_SECTION_TEXT}  Lorem ipsum dolor sit amet, consectetur adipisicing elit. Minima maxime quam architecto quo inventore harum ex magni, dicta impedit.
