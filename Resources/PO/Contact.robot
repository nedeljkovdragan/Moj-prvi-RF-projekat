*** Settings ***
Library  SeleniumLibrary 
*** Variables *** 
${YOUR_NAME_CONTAINER} =  //*[@id="name"]
${YOUR_EMAIL_CONTAINER} =  //*[@id="email"]
${YOUR_PHONE_CONTAINER} =  //*[@id="phone"]
${YOUR_MESSAGE_CONTAINER} =  //*[@id="message"]
${SEND_MESSAGE_BUTTON} =  //*[@id="contactForm"]/div/div[4]/button
${MESSAGE_SENT_SUCCESS_MESSAGE} =  //*[@id="success"]/div/strong
*** Keywords ***
A user can send a message
    Input Text  ${YOUR_NAME_CONTAINER}  Moje ime
    Input Text  ${YOUR_EMAIL_CONTAINER}  email12312321321@gmail.com
    Input Text  ${YOUR_PHONE_CONTAINER}  0621232132832137213
    Input Text  ${YOUR_MESSAGE_CONTAINER}  This is my message
    Sleep  3s
    Click Element  ${SEND_MESSAGE_BUTTON}
    Sleep  3s
    Element Text Should Be  ${MESSAGE_SENT_SUCCESS_MESSAGE}  Your message has been sent. 
    Sleep  5s
    