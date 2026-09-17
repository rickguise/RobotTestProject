*** Settings ***
Documentation     Test Case 1 - My first test case
Library           OperatingSystem


*** Keywords ***
Log My Username
     Log       The value of my username is: ${MY-DICTIONARY}[username]

Log My Password
     Log       The value of my password is: ${MY-DICTIONARY}[password]

Log Username and Password 1
     Log       The value of my username is: ${MY-DICTIONARY}[username]
     Log       The value of my password is: ${MY-DICTIONARY}[password]   

Log Username and Password 2
     Log My Username
     Log My Password

Log My Specific Username
    [Arguments]    ${username}
    Log            The value of my specific username item is: ${username}

Log My Specific Password
    [Arguments]    ${password}
    Log            The value of my specific username item is: ${password}

Log My Specific Username and Password
    [Arguments]    ${username}    ${password}
    Log My Specific Username    ${username}
    Log My Specific Password    ${password}


*** Variables ***
${MY-VARIABLE}    my test variable
${MY-VARIABLE2}    my secondtest variable

${GOOGLE-SEARCH-FIELD}    //input[@title='Search']

@{MY-LIST}    item1    item2    item3

&{MY-DICTIONARY}     username=testuser    password=pass    domain=domain.com
&{MY-DICTIONARY2}    username=testuser2   password=pass2   domain=domain.com2

*** Test Cases ***
Test Case 1
    [Tags]    demo    demo2
    Log       This is a sample test case
    Log       The value of my variable is: ${MY-VARIABLE}
    Log       The value of my variable is: ${MY-VARIABLE2}
    Log       The value of the Google search field is: ${GOOGLE-SEARCH-FIELD}    
    Log       The value of my list is: ${MY-LIST}
    Log       The value of my list item is: ${MY-LIST}[2]
    Log       The value of my list item is: ${MY-LIST}[0]
    Log       The value of my dictionary is: ${MY-DICTIONARY}

    Log       The value of my dictionary item is: ${MY-DICTIONARY}[username]    
    Log       The value of my dictionary item is: ${MY-DICTIONARY}[password]    
    Log       The value of my dictionary item is: ${MY-DICTIONARY}[domain]    
    
    Log My Username  
    Log My Password

    Log Username and Password 1
    Log Username and Password 2

    Log My Specific Username    ${MY-DICTIONARY}[username]
    Log My Specific Username    ${MY-DICTIONARY2}[username]

    Log My Specific Username and Password    ${MY-DICTIONARY}[username]    ${MY-DICTIONARY}[password]
    Log My Specific Username and Password    ${MY-DICTIONARY2}[username]    ${MY-DICTIONARY2}[password]

