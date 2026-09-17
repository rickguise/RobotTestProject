*** Settings ***
Documentation     Resource File
Library           OperatingSystem

*** Keywords ***
Log My Specific Username
    [Arguments]    ${username}
    Log            The value of my specific username item is: ${username}

Log My Specific Password
    [Arguments]    ${password}
    Log            The value of my specific password item is: ${password}

Log My Specific Username and Password
    [Arguments]    ${username}    ${password}
    Log My Specific Username    ${username}
    Log My Specific Password    ${password}

*** Variables ***
&{MY-DICTIONARY}     username=testuser    password=pass    domain=domain.com
