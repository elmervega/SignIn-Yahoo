*** Settings ***
Documentation    All Keywords
Library          SeleniumLibrary
Resource         ../Keywords/Validate_text.robot

*** Keywords ***
Open Browser Yahoo
    Open Browser    ${LOGIN URL}    ${BROWSER}
    Visible_title    Yahoo Finance - Stock Market Live, Quotes, Business & Finance News
    maximize browser window
    set selenium implicit wait    5
    set selenium speed    .1s

Sign in Yahoo
    Click_button    id=header-signin-link
    set selenium implicit wait    5

Start Create Account
    Visible_title    Yahoo
    Click_button    id=createacc
    set selenium implicit wait    5

Input Full Name
    [Arguments]        ${FullName}
    Required This
    Function_text    id=usernamereg-firstName      ${FullName}
    set selenium implicit wait    5

Input Last Name
    [Arguments]        ${LastName}
    Required This
    Function_text    id=usernamereg-lastName       ${LastName}
    set selenium implicit wait    5

Input Email
    [Arguments]        ${Email}
    Required This
    Function_text    id=usernamereg-userId     ${Email}
    set selenium implicit wait    5

Input Password
    [Arguments]        ${Password}
    Required This
    Function_text    id=usernamereg-password   ${Password}
    set selenium implicit wait    5

Input Birth Year
    [Arguments]        ${BirthYear}
    Required This
    Function_text    id=usernamereg-birthYear  ${BirthYear}
    set selenium implicit wait    5

Click Button Continue
    Click_button    id=reg-submit-button
    set selenium implicit wait    5

Input Phone
    [Arguments]        ${Phone}
    Visible_title    Yahoo
    Function_text      id=usernamereg-phone      ${Phone}
    Click_button    id=reg-submit-button
    set selenium implicit wait    5

Capture Data User
    Capture_pages    Full_data.png

Capture Images
    Capture_pages   Code_phone.png

Close Navigator
    sleep   2
    close browser