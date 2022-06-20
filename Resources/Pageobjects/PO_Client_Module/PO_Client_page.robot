*** Settings ***
Library     SeleniumLibrary
Documentation       This File contains Login related data


*** Variables ***
${client_appearnce}     css:.lTBusinessUnit

#Search
${Search_box}       css:input[name="textBoxSearch"]


#Listing
${serchtext}       101 Federal Street LLC
${Entity}       css:a[class='entity__filter']

#Dashboard
${Dashboard}        css:a[routerlink='dashboard']

#Bookekkeeping review NAV
${Bookkeeping}      css:a[routerlink='bookkeeping-review']

#Bookekkeeping review pop up for selection
${submitbtn}        css:button[type='submit']