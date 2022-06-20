*** Setting ***
Library     SeleniumLibrary

Resource    ../../../Resources/Pageobjects/PO_Bookkeeping/PO_Bookkeeping.robot

*** Variables ***
${timeout}=     30



*** Keywords ***
Get the report name
    ${test}=        get text        ${Reportname}
    log         ${test}