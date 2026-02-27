*** Settings ***
Library    SeleniumLibrary
Resource   ../resources/keywords.robot

# usernames and passwords definitely shouldn't be in the test file
# but this is here for demo purposes
*** Variables ***
${USERNAME}   tomsmith
${PASSWORD}   SuperSecretPassword!

*** Test Cases ***
Smoke Test Successful Login
    [Tags]    smoke    
    Open Login Page 
    Login To Application    ${USERNAME}      ${PASSWORD}
    Check Successful Login
    Close Browser

