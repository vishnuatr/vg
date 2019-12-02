*** Settings ***
Library  Selenium2Library
Variables  ../PageObject/Locators.py


*** Keywords ***
Open Browser To TestLink
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Title Should Be    TestLink


Input Username
    [Arguments]    ${username}
    Input Text    ${txt_LoginName}    ${username}

Input Password
    [Arguments]    ${password}
    Input Text    ${txt_LoginPassword}    ${password}

Submit Credentials
    Click Button    ${btn_Login}
