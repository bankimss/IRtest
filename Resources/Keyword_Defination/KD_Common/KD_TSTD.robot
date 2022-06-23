*** Settings ***
Library  SeleniumLibrary
Documentation       This File contains Login related data
Resource     ../../../TestData/TD_Client_Module/Logindata.robot
Resource        ../../../Resources/Pageobjects/PO_Client_Module/PO_Client_page.robot


*** Keywords ***

#Open browser with Insight Review URL
Launch Browser
    #Open Browser    ${url}      ${Browser}      executable_path=Drivers/${Browser}
    [arguments]         ${Browser}
    Create Webdriver         ${Browser}      executable_path=C:/Users/bankim.sharma/PycharmProjects/Insight_Review/Project_drivers/${Browser}
    Go to       ${url}
    Maximize Browser Window
    input text      ${uname_textbox}        ${user_name}
    input password      ${Pass_textbox}     ${valid_pass}
    Click Button        ${Sign_in}
    wait until element is visible      ${List_client}       ${timeout}



#CLose Browser
CLosing Browser
    Close Browser




