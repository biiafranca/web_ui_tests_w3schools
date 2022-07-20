*** Settings ***
Library                  SeleniumLibrary
Resource                 common_resources.resource

*** Variables ***
${LEARN_HTML__MENU}                     //a[text()="Learn HTML"]
${HTML_FORMS__MENU}                     //a[text()="HTML Forms"]
${TRY_IT_YOURSELF__BUTTON}              //a[text()="Try it Yourself »"]
${RESULTS_AREA__FRAME}                  id=iframeResult
${SUBMIT__BUTTON}                       //input[@type="submit"]
${SUBMITTED_VALUE__FIELD}               //*[@class="w3-container"]/div[1]


*** Keywords ***
Page At HTML Forms Menu
    Click Element                        ${TUTORIALS_OPTION}
    Click Element                        ${LEARN_HTML__MENU}
    Click Element                        ${HTML_FORMS__MENU}

Access "Try it Yourself" Area
    Click Element                        ${TRY_IT_YOURSELF__BUTTON}
    Switch Window                        NEW
    Sleep                                5s
    Title Should Be                      Tryit Editor v3.7
    Select Frame                         ${RESULTS_AREA__FRAME}

Input Text "${NEW_TEXT}" On Field ${TEXT_FIELD}
    Input Text                           ${TEXT_FIELD}         ${NEW_TEXT}

Click At Submit Form Option
    Click Element                        ${SUBMIT__BUTTON}

Submitted Value Contain First Name "${FIRST_NAME}" And Last Name "${LAST_NAME}"
    Element Should Contain               ${SUBMITTED_VALUE__FIELD}
    ...                                  fname=${FIRST_NAME}&lname=${LAST_NAME}
