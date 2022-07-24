*** Settings ***
Library                  SeleniumLibrary
Resource                 common_resources.resource

*** Variables ***
${LEARN_HOW_TO__MENU}                   //a[text()="Learn How To"]
${MODAL_BOXES__MENU}                    //a[text()="Modal Boxes"]
${OPEN_MODAL__BUTTON}                   //button[text()="Open Modal"]
${MODAL_HEADER__TEXT}                   //*[text()="Modal Header"]
${MODAL_FIRST_CONTENT__TEXT}            //*[text()="Hello World!"]
${MODAL_SECOND_CONTENT__TEXT}           //*[text()="Modals are awesome!"]
${MODAL_FOOTER__TEXT}                   //*[text()="Modal Footer"]
${CLOSE_MODAL__BUTTON}                  //header//span[text()="×"]
${FIRST_NAME__FIELD}                    id=fname
${LAST_NAME__FIELD}                     id=lname


*** Keywords ***
Page At Modal Boxes Menu
    Click Element                         ${TUTORIALS_OPTION}
    Scroll Element Into View              ${LEARN_HOW_TO__MENU}
    Click Element                         ${LEARN_HOW_TO__MENU}
    Click Element                         ${MODAL_BOXES__MENU}

Click At Open Modal Option
    Click Element                         ${OPEN_MODAL__BUTTON}

Modal Box Becomes Visible
    Element Should Be Visible             ${MODAL_HEADER__TEXT}
    Element Should Be Visible             ${MODAL_FIRST_CONTENT__TEXT}
    Element Should Be Visible             ${MODAL_SECOND_CONTENT__TEXT}
    Element Should Be Visible             ${MODAL_FOOTER__TEXT}

Close Modal Box
    Click Element                         ${CLOSE_MODAL__BUTTON}

Modal Box Is Closed
    Element Should Not Be Visible         ${MODAL_HEADER__TEXT}
    Element Should Not Be Visible         ${MODAL_FIRST_CONTENT__TEXT}
    Element Should Not Be Visible         ${MODAL_SECOND_CONTENT__TEXT}
    Element Should Not Be Visible         ${MODAL_FOOTER__TEXT}
