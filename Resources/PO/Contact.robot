*** Settings ***
Library  SeleniumLibrary 
Library  String

*** Variables *** 
${YOUR_NAME_CONTAINER} =  //*[@id="name"]
${YOUR_EMAIL_CONTAINER} =  //*[@id="email"]
${YOUR_PHONE_CONTAINER} =  //*[@id="phone"]
${YOUR_MESSAGE_CONTAINER} =  //*[@id="message"]
${SEND_MESSAGE_BUTTON} =  //*[@id="contactForm"]/div/div[4]/button
${MESSAGE_SENT_SUCCESS_MESSAGE} =  //*[@id="success"]/div/strong

${YOUR_NAME_ERROR_MESSAGE_CONTAINER} =  //*[@id="contactForm"]/div/div[1]/div[1]/p/ul/li
${YOUR_EMAIL_ERROR_MESSAGE_CONTAINER} =  //*[@id="contactForm"]/div/div[1]/div[2]/p/ul/li
${YOUR_NUMBER_ERROR_MESSAGE_CONTAINER} =  //*[@id="contactForm"]/div/div[1]/div[3]/p/ul/li
${YOUR_MESSAGE_ERROR_MESSAGE_CONTAINER} =  //*[@id="contactForm"]/div/div[2]/div/p/ul/li

*** Keywords ***
A user can send a message
    ${password} =  Generate Random String  7  [NUMBERS][LOWER]
    ${number} =  Generate Random String  7  [NUMBERS]
    ${message} =  Generate Random String  347  [UPPER] [LOWER] [UPPER] [LOWER]
    Input Text  ${YOUR_NAME_CONTAINER}  Some name
    #Remove String  ${YOUR_NAME_CONTAINER} ovo ne radi pos'o brisanja stringa :D
    Input Text  ${YOUR_EMAIL_CONTAINER}  ${password}@gmail.com
    Input Text  ${YOUR_PHONE_CONTAINER}  076${number}
    Input Text  ${YOUR_MESSAGE_CONTAINER}  This is my message "${message}"
    Sleep  7s
    Click Element  ${SEND_MESSAGE_BUTTON}
    Sleep  2s
    Element Text Should Be  ${MESSAGE_SENT_SUCCESS_MESSAGE}  Your message has been sent. 
    Sleep  2s

Error messages do appear
    Click Element  ${SEND_MESSAGE_BUTTON}
    Element Text Should Be  ${YOUR_NAME_ERROR_MESSAGE_CONTAINER}  Please enter your name.
    Element Text Should Be  ${YOUR_EMAIL_ERROR_MESSAGE_CONTAINER}  Please enter your email address.
    Element Text Should Be  ${YOUR_NUMBER_ERROR_MESSAGE_CONTAINER}  Please enter your phone number.
    Element Text Should Be  ${YOUR_MESSAGE_ERROR_MESSAGE_CONTAINER}  Please enter a message.
    Sleep  5s


    

    