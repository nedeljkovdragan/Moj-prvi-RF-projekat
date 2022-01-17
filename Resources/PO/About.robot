*** Settings ***
Library  SeleniumLibrary 
*** Variables ***
${SECTION_ONE} =  //*[@id="about"]/div/div[2]/div/ul/li[1]/div[2]
*** Keywords ***
"Our Humble Beginnings" have "2009-2011" years in it
    Element Should Contain  ${SECTION_ONE}  2009-2011
    