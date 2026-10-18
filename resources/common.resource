*** Settings ***
Library    SeleniumLibrary
Library    Collections


*** Variables ***
${BaseURL}    http://127.0.0.1:8000/
${BrowserName}    Chrome
${valid_username}     manoj1
${valid_password}    Manoj@123
${invalid_password}    Manoj123

*** Keywords ***
Open RS Bank Page
    IF    $BrowserName.lower() == "chrome"
        ${options}=    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys
        ${prefs}=    Create Dictionary    
...     credentials_enable_service=${False}
...     profile.password_manager_enabled=${False}
...     profile.password_manager_leak_detection=${False}
        Call Method    ${options}    add_experimental_option    prefs    ${prefs}
        Create Webdriver    Chrome    options=${options}
    ELSE IF    $BrowserName.lower() == "edge"
        Create Webdriver    Edge
    ELSE IF    $BrowserName.lower() == "firefox"
        Create Webdriver    Firefox
    END

    Go To    ${BaseURL}
    Maximize Browser Window

Close The Browser
    Close Browser

Wait For The Element Visible
    [Arguments]    ${visible_locator}
    Wait Until Element Is Visible     ${visible_locator}


