*** Settings ***
Library  SeleniumLibrary 
*** Variables *** 
${YOUR_NAME_CONTAINER} =  //*[@id="name"]
*** Keywords ***
A user can send a message
    Input Text  ${YOUR_NAME_CONTAINER}  Moje ime
    Sleep  3s