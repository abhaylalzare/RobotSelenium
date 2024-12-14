*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}  https://www.facebook.com/
${browser}  chrome

*** Test Cases ***
Demotestcase
    open browser    ${url}  ${browser}
    maximize browser window
    title should be     Facebook – log in or sign up
    sleep    5
    ${login_button}     set variable    xpath://button[@type='submit']
    element should be enabled    ${login_button}
    element should be visible    ${login_button}
    input text    id:email      abhay@gmail.com
    input text    name:pass     jgjhghjgvh
    click button    ${login_button}
    sleep    5
    close browser
*** Keywords ***
