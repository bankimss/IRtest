*** Setting ***
Library     SeleniumLibrary

Resource    ../../../Resources/Pageobjects/PO_Client_Module/PO_Client_page.robot

*** Variables ***
${timeout}=     30
${Name}=    Dashboard


*** Keywords ***
Enter text in serch & clcik on that entity
    input text      ${Search_box}       ${serchtext}
    click element       ${Entity}

Select entity & check user land on dashboard
    wait until element is visible      ${Dashboard}     ${timeout}
    ${Text_dash}=   get text    ${Dashboard}
    log     ${Text_dash}
    log     ${Name}
    Should Be Equal    ${Text_dash}    ${Name}    STrings are not matching check the navigation flow    values=True

Navigate to bookeeping review for further testing
    click element       ${Bookkeeping}
    wait until element is visible      ${submitbtn}     ${timeout}
    click button        ${submitbtn}
    sleep       30
