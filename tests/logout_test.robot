*** Settings ***
Documentation    Validate Log Out Functionality
Resource    ../resources/common.resource
Resource    ../pages/login_page.resource
Resource    ../pages/logout_page.resource
Test Setup    Open RS Bank Page
Test Teardown   Close The Browser

*** Variables ***

*** Test Cases ***
Check Logout
    [Tags]    smoke    regression
    Click On Login
    Login Using The Credential      ${valid_username}    ${valid_password}
    Wait For The Element Visible    ${visible_element_locator}
    Verify Successful Login
    Click On Logout
    Wait For The Element Visible    ${success_logout_message_locator}
    Verify Successful Logout Message
