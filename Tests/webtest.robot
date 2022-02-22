*** Settings ***

Documentation  some basic infomation
Library  SeleniumLibrary

*** Test Cases ***
User Can Access Website

    [Documentation]  This is some basic infomation
    [Tags]  Test 1
    Open Browser    about:blank  chrome
    Go To   https://www.mediamarkt.se
    Wait Until Page Contains    Om Mediamarkt
    Close Browser