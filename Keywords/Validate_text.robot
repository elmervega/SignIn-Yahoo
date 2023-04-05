*** Settings ***
Documentation    Validate input button
Library          SeleniumLibrary

*** Variables ***
${PATH_IMAGE}=      /Users/elmervega/Documents/Yahoo/Reports/IMG/

*** Keywords ***
Function_text
    [Arguments]    ${Selector}      ${Data}
    wait until element is visible    ${Selector}
    wait until element is enabled    ${Selector}
    element should be visible    ${Selector}
    input text    ${Selector}       ${Data}

Visible_title
    [Arguments]    ${Title}
    title should be    ${Title}

Click_button
    [Arguments]    ${Button}
    wait until element is visible    ${Button}
    wait until element is enabled    ${Button}
    element should be visible    ${Button}
    click element    ${Button}

Capture_pages
    [Arguments]    ${Name}
    capture page screenshot     ${PATH_IMAGE}${Name}

Required This
    [Documentation]    Validation comment

    ${Comment}=     Set Variable    This is required.
    Run Keyword If      '${Comment}' == 'This is required.'   Information Complet

Information Complet
    log    Fields filled correctly
