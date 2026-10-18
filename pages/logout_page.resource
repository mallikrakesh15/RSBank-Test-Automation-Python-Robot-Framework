*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${logout_btn_locator}    css:.logout-link
${success_logout_message_locator}    css:.auth-message


*** Keywords ***
Click On Logout
    Click Link    ${logout_btn_locator}

Verify Successful Logout Message
    ${logout_message}=    Get Text    ${success_logout_message_locator}
    Should Be Equal As Strings    ${logout_message}    You have been logged out successfully.

