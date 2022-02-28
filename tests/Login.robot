*Settings*
Documentation       Login Test suite

Resource        ${EXECDIR}/resources/Base.robot


Test Setup      Start session 
Test Teardown   Finish session

*Test Cases*

User Login

    Add User From Database  ${user}

    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    User Should Be Logged in        ${user}
    



Incorrect password
    [Tags]      inv_pass
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
    

