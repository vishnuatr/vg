*** Settings ***
Library  Selenium2Library
Resource  ../Resources/LoginKeyword.robot

*** Variables ***
${LOGIN URL}      http://testlink.inlogic.in:8009/testlink/login.php
${BROWSER}        Chrome

*** Test Cases ***
Valid Login
    Open Browser To TestLink
    Input Username    vishnu
    Input Password    testlink
    Submit Credentials
    [Teardown]    Close Browser