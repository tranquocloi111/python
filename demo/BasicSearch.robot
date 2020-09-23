*** Settings ***
Documentation    Basic Search
Library  SeleniumLibrary

*** Variable ***
${LOGIN URL}      https://staging.kyna.vn
${BROWSER}        Chrome

*** Test Cases ***
Verify basic search functionally for eBay
        Open Browser To Login Page
        Turn off pop up
        Login with username and password
        Turn off Browser

*** Keywords ***
Open Browser To Login Page
    Open Browser    ${LOGIN URL}    ${BROWSER}
Turn off pop up
    Wait Until Element Is Visible  //a[@title='Close']
    Click Element   //a[@title='Close']
Login with username and password
    Wait Until Element Is Visible  //a[@class='button-login header-login']
    Click Element   //a[@class='button-login header-login']
Turn off Browser
    Close Browser
