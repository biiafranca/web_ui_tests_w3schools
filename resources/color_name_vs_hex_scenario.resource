*** Settings ***
Library                                  SeleniumLibrary
Resource                                 common_resources.resource

*** Variables ***
${LEARN_COLORS__MENU}                    //a[text()="Learn Colors"]
${COLOR_GROUPS__MENU}                    //a[text()="Color Groups"]


*** Keywords ***
Page At Color Groups Menu
    Click Element                         ${TUTORIALS_OPTION}
    Scroll Element Into View              ${LEARN_COLORS__MENU}
    Click Element                         ${LEARN_COLORS__MENU}
    Click Element                         ${COLOR_GROUPS__MENU}

Color Name Is ${COLOR_NAME}
    Set Test Variable                    ${COLOR_NAME}
    Element Should Be Visible            //a[text()="${COLOR_NAME}"]

Hexadecimal Correspondent To Color Is ${COLOR_HEX}
    Element Should Be Visible            //a[text()="${COLOR_NAME}"]//following::a
    ${CURRENT_HEX} =                     Get Text           //a[text()="${COLOR_NAME}"]//following::a
    Should Be Equal As Strings           ${COLOR_HEX}       ${CURRENT_HEX}
