*** Settings ***
Resource                 resources/color_name_vs_hex_scenario.resource
Resource                 resources/html_form_scenario.resource
Resource                 resources/modal_box_scenario.resource

Force Tags               robot:continue-on-failure

Test Setup               Open W3Schools Page
Test Teardown            Close Browser


*** Test Cases ***
Scenario #01: Open And Close Modal Box
    Given Page At Modal Boxes Menu
    When Click At Open Modal Option
    Then Modal Box Becomes Visible
    When Close Modal Box
    Then Modal Box Is Closed

Scenario #02: Check Color Names And Correspondent Hex
    Given Page At Color Groups Menu
    When Color Name Is Black
    Then Hexadecimal Correspondent To Color Is #000000
    When Color Name Is Maroon
    Then Hexadecimal Correspondent To Color Is #800000
    When Color Name Is Gold
    Then Hexadecimal Correspondent To Color Is #FFD700
    When Color Name Is Cyan
    Then Hexadecimal Correspondent To Color Is #00FFFF
    When Color Name Is Blue
    Then Hexadecimal Correspondent To Color Is #0000FF
    When Color Name Is Silver
    Then Hexadecimal Correspondent To Color Is #C0C0C0
    When Color Name Is BlueViolet
    Then Hexadecimal Correspondent To Color Is #8A2BE2

Scenario #03: Edit HTML Form
    Given Page At HTML Forms Menu
    When Access "Try it Yourself" Area
    And Input Text "Bianca" On Field ${FIRST_NAME__FIELD}
    And Input Text "França" On Field ${LAST_NAME__FIELD}
    And Click At Submit Form Option
    Then Submitted Value Contain First Name "Bianca" And Last Name "França"
