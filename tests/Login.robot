*Settings*
Documentation       Login Test suite

Resource        ${EXECDIR}/resources/Base.robot


Test Setup      Start session 
Test Teardown   Finish session

*Test Cases*

User Login
    [Tags]  chal_errors

    ${user}         Factory User        login

    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    User Should Be Logged in        ${user}
    



Incorrect password
    [Tags]        v_pass
    ${user}     Create Dictionary       email=papito@hotmail.com    password=abc123

    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos.


User Incorrect
    [Tags]      user_404
    ${user}     Create Dictionary       email=papito@404.net    password=abc123

    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    Modal Content Should Be     Usuário e/ou senha inválidos.
    
Incorrect Email
    [Tags]      inv_email
    ${user}     Create Dictionary       email=papito.com.br    password=abc123

    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    Should be Type Email    

#Desafio PRO 
#automatizar email obrigatorio, senha obrigatoria, campos obrigatorios

Email Required
    [Tags]      challenger

    ${user}     Create Dictionary       password=pwd123
    
    @{expected_alerts}      Create List 
    ...                     E-mail obrigatório

    Go To Login Page
    Fill Input Password         ${user}
    Submit Credentials
    Alert Spans Should Be       ${expected_alerts}      
    
Password Required    
    [Tags]      challenger

    @{expected_alerts}      Create List
    ...                     Senha obrigatória

    ${user}     Create Dictionary       email=papito@hotmail.com

    Go To Login Page    
    Fill Input Email        ${user}
    Submit Credentials
    Alert Spans Should Be       ${expected_alerts} 

Two Fields Required    
    [Tags]      challenger

    @{expected_alerts}      Create List 
    ...                     E-mail obrigatório
    ...                     Senha obrigatória

    ${user}     Create Dictionary       password=pwd123

    Go To Login Page
    Submit Credentials   
    Alert Spans Should Be        ${expected_alerts} 


