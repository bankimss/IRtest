*** Settings ***
Documentation       This File contains Login related data
Library     SeleniumLibrary

*** Variables ***
${url}=  https://insightreview.aixsol.com/login
${uname_textbox}        name:Email
${Pass_textbox}     name:Password
${Sign_in}      class:btn
${user_name}=   jkshah@analytix.com
${valid_pass}=      Analytix@123
${List_client}      css:.icon-connected
#${browser}=     Chrome
${timeout}=    50