*** Setting ***
Documentation       Test doc
Library             SeleniumLibrary
Resource        ../../Resources/Keyword_Defination/KD_Client_Module/KD_client_page.robot
Resource        ../../Resources/Pageobjects/PO_Client_Module/PO_Client_page.robot
Resource        ../../Resources/Keyword_Defination/KD_Common/KD_TSTD.robot

Test Setup      KD_TSTD.Launch Browser      Chrome
#Test Teardown    KD_TSTD.CLosing Browser

*** Variables ***



*** Test Cases ***
To check when user serch any entity then it is appering & it is accessible when user clicks it
    KD_client_page.Enter text in serch & clcik on that entity
    KD_client_page.Select entity & check user land on dashboard
    KD_client_page.Navigate to bookeeping review for further testing


