*** Settings ***
Documentation       Simple example register in Yahoo
Library             SeleniumLibrary
Resource            ../Keywords/keywords_yahoo.robot


*** Variables ***
${LOGIN URL}        https://finance.yahoo.com/
${BROWSER}          Chrome

*** Test Cases ***
Valid Login
    [Documentation]    Sign in in Yahoo
    Open Browser Yahoo
    Sign in Yahoo
    Start Create Account
    Input Full Name    Jose Miguel
    Input Last Name    Vera Vargas
    Input Email        joseveras30839
    Input Password     Veras.&1234
    Input Birth Year   1999
    Capture Data User
    Click Button Continue
    Input Phone        63359701
    Capture Images
    Close Navigator



