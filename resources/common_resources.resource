*** Settings ***
Library                                   SeleniumLibrary

*** Variables ***
${BROWSER}                                headlessfirefox
${URL_W3SCHOOLS}                          https://www.w3schools.com/
${SELENIUM_TIMEOUT}                       15s

${TUTORIALS_OPTION}                       id=navbtn_tutorials
${MAIN_PAGE}                              id=main

*** Keywords ***
Open W3Schools Page
    Open Browser                          about:blank         ${BROWSER}
    Set Selenium Implicit Wait            ${SELENIUM_TIMEOUT}
    Maximize Browser Window
    Go To                                 ${URL_W3SCHOOLS}
    Title Should Be                       W3Schools Online Web Tutorials
    Wait Until Element Is Visible         ${MAIN_PAGE}               30s