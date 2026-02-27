***Settings***
Library    SeleniumLibrary

*** Variables ***
${URL}      https://the-internet.herokuapp.com/login
${USERNAME_FIELD}   id:username
${PASSWORD_FIELD}   id:password
${LOGIN_BUTTON_TEXT}    xpath=//button[normalize-space()='Login']
${LOGGED_IN_TEXT}    xpath=//h2[contains(text(), 'Secure Area')]

*** Keywords ***
Open Login Page
    Open Browser    ${URL}    firefox

Login Should Succeed
    Page Should Contain    ${SUCCESS_MESSAGE}

Login To Application
    [Arguments]    ${username}    ${password}
    Input Text    ${USERNAME_FIELD}    ${username}
    Input Text   ${PASSWORD_FIELD}   ${password}
    Click Button    ${LOGIN_BUTTON_TEXT}

Check Successful Login
    Wait Until Element Is Visible    ${LOGGED_IN_TEXT}    timeout=10s
    Element Should Be Visible   ${LOGGED_IN_TEXT}