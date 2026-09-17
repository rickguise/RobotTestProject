*** Settings ***
Documentation     Test Case 4 - My fourth test case
Resource          ../Resources/resources.robot

*** Keywords ***
Log My Specific Username and Password2
    [Arguments]    ${username}    ${password}
    Log My Specific Username    ${username}
    Log My Specific Password    ${password}





*** Test Cases ***
Test Case 4
    [Tags]    demo    demo2
    Log My Specific Username and Password    ${MY-DICTIONARY}[username]    ${MY-DICTIONARY}[password]
    Log My Specific Username and Password2    ${MY-DICTIONARY}[username]    ${MY-DICTIONARY}[password]



    
