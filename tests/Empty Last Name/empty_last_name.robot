*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      file:///D:/CP/lab4/TestAutomationLab/StarterFiles/Registration.html
${BROWSER}  Chrome

*** Test Cases ***
Empty Last Name
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Input Text    id=firstname     Somyod
    Input Text    id=organization  CS KKU
    Input Text    id=email         somyod@kkumail.com
    Input Text    id=phone         091-001-1234
    Click Button  id=registerButton

    Page Should Contain    Please enter your last name!!
    Close Browser
