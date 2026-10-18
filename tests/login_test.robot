*** Settings ***
Documentation    Validate Login Functionality
Resource    ../resources/common.resource
Resource    ../pages/login_page.resource
Test Setup    Open RS Bank Page
Test Teardown    Close The Browser

*** Variables ***


*** Test Cases ***
Valid Login Check
    [Tags]    smoke    regression
    Click On Login
    Login Using The Credential      ${valid_username}    ${valid_password}
    Wait For The Element Visible    ${visible_element_locator}
    Verify Successful Login

InValid Login Check
    [Tags]    smoke    regression
    Click On Login
    Login Using The Credential      ${valid_username}    ${invalid_password}
    Wait For The Element Visible    ${invalid_message_locator}
    Verify Invalid Login Message