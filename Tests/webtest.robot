*** Settings ***

Documentation  some basic infomation
Library  SeleniumLibrary

*** Keywords ***
Begin Web Test
    Open Browser    about:blank  chrome
Go To Web Page
    Go To   https://www.mediamarkt.se
    Wait Until Page Contains    Om MediaMarkt
Search For Product
    Input Text  //*[@id="search-autocomplete"]/form/input[1]    Game & Watch: The Legend of Zelda
    Press Keys  //*[@id="search-autocomplete"]/form/input[1]    RETURN
    Wait Until Page Contains    Game & Watch: The Legend of Zelda
End Web Test
    Close Browser



*** Test Cases ***
User Can Access Website And Search For Product

    [Documentation]  This is some basic infomation
    [Tags]  Test 1
    Begin Web Test
    Go To Web Page
    Search For Product
    End Web Test



