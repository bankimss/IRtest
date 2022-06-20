*** Setting ***
Documentation       Test doc
Library             SeleniumLibrary
Library         Collections
Library        RequestsLibrary
Library     JSONLibrary




*** Variables ***
${BaseURL}      https://insightreviewapi.aixsol.com
${BEARER}       Bearer
${test6}
${Generic_code}=     '200'
${cdata}=       {"iEntityInfoId":3721,"iPartnerInfoId":1,"strCompanyNameId":"GEN_AIX_ANA_610666","strCompanyName":"Analytix Business Solutions (India)","strEntityDisplayName":"Analytix Business Solutions - India","strCompanyNameId_AIX":"-","strAccountSystem":"QuickBooks Online"}
${parameters}=      startDate=2022-01-01&endDate=2022-05-30&strselectedDisplayTransactionStataus=0&iReportAssignmentId=0
*** Test Cases ***

Geneareta the token using authenticate so that Request chaining can be used
    &{REQ_data}=        Create Dictionary       Email=jkshah@analytix.com        Password=Analytix@123      IssSelfOnBoard=false
    ${Res}=     POST        ${BaseURL}/api/Authentication/Authenticate      json=${REQ_data}
    Log   ${Res.json()}
    ${token}=        Get Value From Json	        ${Res.json()}       $.responseModel.access_token
    ${convertListToString}=   Evaluate             "".join(${token})
    ${test6}=                 Catenate      ${BEARER}    ${convertListToString}
    log     ${test6}
    Set Global Variable     ${test6}

Transaction To be classified Report API Health check for response code & Success
    &{headers}=      Create Dictionary   Authorization=${test6}     customdata=${cdata}
    ${TBD}=     GET     ${BaseURL}/api/insightReview/report/transaction/transactionTobeClassified/list      params=${parameters}    headers=${headers}
    log     ${TBD.json()}
    ${TBD_success}=    Get From Dictionary      ${TBD.json()}        isSuccess
    Should be equal As Strings      True        ${TBD_success}
    ${TBD_code}=    Get From Dictionary      ${TBD.json()}        statusCode
    status should be    200     ${TBD}

TRansaction Without Class Report API Health check for response code & Success
    &{headers}=      Create Dictionary   Authorization=${test6}     customdata=${cdata}
    ${WithoutClass}=    GET     ${BaseURL}/api/insightReview/report/transaction/withoutClass/list       params=${parameters}        headers=${headers}
    ${wc_success}=      GET FROM DICTIONARY     ${WithoutClass.json()}      isSuccess
    Should be equal As Strings      True     ${wc_success}
    ${WC_code}=    Get From Dictionary      ${WithoutClass.json()}        statusCode
    status should be    200

testcase 456
    get report data     ${BaseURL}/api/insightReview/report/transaction/withoutClass/list       params=${parameters}
