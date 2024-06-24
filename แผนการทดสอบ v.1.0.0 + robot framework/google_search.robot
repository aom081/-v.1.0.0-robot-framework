*** Settings ***
Library     SeleniumLibrary


*** Variables ***
${BROWSER}          Chrome
${SEARCH_TERM}      robot framework
${URL}            https://google.com


*** Test Cases ***
Search Google and Verify Results
    [Documentation]    Test case to search Google and verify results
    [Tags]    Search
    Open Google
    Input Search Term
    Click Google Search
    Verify Search Results
    Close Browser


*** Keywords ***
Open Google
    Open Browser    https://www.google.com    ${BROWSER}

Input Search Term
    Input Text    name=q    ${SEARCH_TERM}

Click Google Search
    Press Keys    name=q    ENTER

Verify Search Results
    Wait Until Page Contains    ${SEARCH_TERM}
