*** Settings ***
Library    SeleniumLibrary

*** Variables ***
${login_btn_locator}    css:.home-login-btn
${username_locator}    id:username
${password_locator}    id:password
${login-btn_locator}    id:login-btn
${visible_element_locator}    xpath://h1
${success_message_locator}    css:.message.success
${invalid_message_locator}    css:.auth-message

*** Keywords ***
Click On Login
    Click Link    ${login_btn_locator}

Login Using The Credential
    [Arguments]    ${username}    ${password}
    Input Text        ${username_locator}     ${username} 
    Input Password    ${password_locator}     ${password}   
    Click Button      ${login-btn_locator}

Verify Successful Login
    ${success_message}=    Get Text    ${success_message_locator}
    Element Should Contain    ${success_message_locator}    Welcome

Verify Invalid Login Message
    ${invalid_message}=    Get Text    ${invalid_message_locator}
    Should Be Equal As Strings    ${invalid_message}    Invalid username or password.


