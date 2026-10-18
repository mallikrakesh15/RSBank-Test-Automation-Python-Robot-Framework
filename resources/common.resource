*** Settings ***
Library    SeleniumLibrary


*** Variables ***
${BaseURL}    http://127.0.0.1:8000/
${BrowserName}    Chrome
${valid_username}     manoj1
${valid_password}    Manoj@123
${invalid_password}    Manoj123

*** Keywords ***
Open RS Bank Page
    Open Browser    ${BaseURL}     ${BrowserName}
    Maximize Browser Window

Close The Browser
    Close Browser

Wait For The Element Visible
    [Arguments]    ${visible_locator}
    Wait Until Element Is Visible     ${visible_locator}


