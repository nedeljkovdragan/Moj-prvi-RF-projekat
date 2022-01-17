*** Settings ***
Library  SeleniumLibrary 
*** Variables ***
${PORTFOLIO_FIRST_SECTION_NAME} =  //*[@id="portfolio"]/div/div[2]/div[1]/div/h4
${PORTFOLIO_SECOND_SECTION_NAME} =  //*[@id="portfolio"]/div/div[2]/div[2]/div/h4
${PORTFOLIO_THIRD_SECTION_NAME} =  //*[@id="portfolio"]/div/div[2]/div[3]/div/h4
${PORTFOLIO_FOURTH_SECTION_NAME} =  //*[@id="portfolio"]/div/div[2]/div[4]/div/h4
${PORTFOLIO_FIFTH_SECTION_NAME} =  //*[@id="portfolio"]/div/div[2]/div[5]/div/h4
${PORTFOLIO_SIXTH_SECTION_NAME} =  //*[@id="portfolio"]/div/div[2]/div[6]/div/h4

${PORTFOLIO_FIRST_SECTION_AREA} =  //*[@id="portfolio"]/div/div[2]/div[1]
${PORTFOLIO_SECOND_SECTION_AREA} =  //*[@id="portfolio"]/div/div[2]/div[2]
${PORTFOLIO_THIRD_SECTION_AREA} =  //*[@id="portfolio"]/div/div[2]/div[3]
${PORTFOLIO_FOURTH_SECTION_AREA} =  //*[@id="portfolio"]/div/div[2]/div[4]
${PORTFOLIO_FIFTH_SECTION_AREA} =  //*[@id="portfolio"]/div/div[2]/div[5]
${PORTFOLIO_SIXTH_SECTION_AREA} =  //*[@id="portfolio"]/div/div[2]/div[6]

${FIRST_SECTION_BUTTON} =  //*[@id="portfolio"]/div/div[2]/div[1]/a/div/div/i
${PROJECT_SECTION_ONE_MODAL_TEXT} =  //*[@id="portfolioModal1"]/div/div/div[2]/div/div/div/p[1]
${CLOSE_MODAL_BUTTON} =  class=close-modal

*** Keywords ***
Portfolio section names are correct
    Element Text Should Be  ${PORTFOLIO_FIRST_SECTION_NAME}  Round Icons
    Element Text Should Be  ${PORTFOLIO_SECOND_SECTION_NAME}  Startup Framework
    Element Text Should Be  ${PORTFOLIO_THIRD_SECTION_NAME}  Treehouse
    Element Text Should Be  ${PORTFOLIO_FOURTH_SECTION_NAME}  Golden
    Element Text Should Be  ${PORTFOLIO_FIFTH_SECTION_NAME}  Escape
    Element Text Should Be  ${PORTFOLIO_SIXTH_SECTION_NAME}  Dreams
Mouse actions are working
    Mouse Over  ${PORTFOLIO_FIRST_SECTION_AREA}
    Sleep  2s
    Mouse Over  ${PORTFOLIO_SECOND_SECTION_AREA}
    Sleep  2s
    Mouse Over  ${PORTFOLIO_THIRD_SECTION_AREA}
    Sleep  2s
    Mouse Over  ${PORTFOLIO_FOURTH_SECTION_AREA}
    Sleep  2s
    Mouse Over  ${PORTFOLIO_FIFTH_SECTION_AREA}
    Sleep  2s
    Mouse Over  ${PORTFOLIO_SIXTH_SECTION_AREA}
    Sleep  2s
Click on the first section opens a modal
    Click Element  ${FIRST_SECTION_BUTTON} 
    Mouse Over  ${PORTFOLIO_FIRST_SECTION_AREA}
    Sleep  2s
    Element Should Contain  ${PROJECT_SECTION_ONE_MODAL_TEXT}  amet consectetur
    Sleep  2s
    Click Element  ${CLOSE_MODAL_BUTTON}
    Sleep  2s
