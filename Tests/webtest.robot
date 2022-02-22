*** Settings ***

Documentation  some basic infomation
Library  SeleniumLibrary

*** Test Cases ***
User Can Access Website And Search For Product

    [Documentation]  This is some basic infomation
    [Tags]  Test 1
    Open Browser    about:blank  chrome
    Go To   https://www.mediamarkt.se
    Wait Until Page Contains    Om MediaMarkt
    Input Text  //*[@id="search-autocomplete"]/form/input[1]    Game & Watch: The Legend of Zelda
    Press Keys  //*[@id="search-autocomplete"]/form/input[1]    [Return]
    Wait Until Page Contains    Game & Watch: The Legend of Zelda
    Close Browser


