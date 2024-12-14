*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${url}      https://testautomationpractice.blogspot.com/
${browser}  chrome

*** Test Cases ***
selectradiobutton
        open browser    ${url}      ${browser}
        maximize browser window
        #set selenium speed  ${SPACE_*_2}
