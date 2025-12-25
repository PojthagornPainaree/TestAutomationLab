*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${URL}      file:///D:/CP/lab4/TestAutomationLab/StarterFiles/Registration.html
${BROWSER}  Chrome

*** Test Cases ***
Register Success No Organization
    Open Browser    ${URL}    ${BROWSER}
    Maximize Browser Window

    Input Text    id=firstname    Somyod
    Input Text    id=lastname     Sodsai
    Input Text    id=email        somyod@kkumail.com
    Input Text    id=phone        091-001-1234
    Click Button  id=registerButton

    Title Should Be    Success
    Page Should Contain    Thank you for registering with us.
    Page Should Contain    We will send a confirmation to your email soon.
    Close Browser
