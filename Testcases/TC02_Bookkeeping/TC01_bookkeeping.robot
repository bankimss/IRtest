*** Setting ***
Documentation       Test doc
Library             SeleniumLibrary
Resource        ../../Resources/Keyword_Defination/KD_Bookkeeping/KD_Bookkeeping.robot
Resource        ../../Resources/Pageobjects/PO_Bookkeeping/PO_Bookkeeping.robot
Resource        ../../Resources/Keyword_Defination/KD_Common/KD_TSTD.robot
Library         ../../CustomLibrary/Filter.py

*** Variables ***
@{filtername}       Name        Transaction Type


*** Test Cases ***
To check that user is in the Exception report page
    KD_Bookkeeping.Get the report name
    test filters on report  ${filtername}