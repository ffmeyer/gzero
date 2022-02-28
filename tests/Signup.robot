*Settings*
Documentation       Sigup Test Suite 

Resource        ${EXECDIR}/resources/base.robot



Test Setup      Start Session
Test Teardown   Finish session

*Test Cases*
Register a new user

    ${user}     Factory User

    Go To Signup Form
    Fill Signup Form        ${user}
    Submit Signup Form
    User Should Be Registered

Duplicate user
    [Tags]      attemp_signup

    ${user}                     Factory User

    Add User From Database      ${user} 

    Go To Signup Form
    Fill Signup Form            ${user}
    Submit Signup Form
    Modal Content Should Be     Já temos um usuário com o e-mail informado.

Wrong Email
    [Tags]      attemp_signup

    ${user}                     Factory Wrong Email

    Go To Signup Form
    Fill Signup Form            ${user}
    Submit Signup Form
    Alert Span Should Be        O email está estranho


Required Fields
    [Tags]      attemp_signup       reqf

    @{expected_alerts}      Create List 
    ...                     Cadê o seu nome?
    ...                     E o sobrenome?
    ...                     O email é importante também!
    ...                     Agora só falta a senha!

    Go To Signup Form
    Submit Signup Form
    Alert Spans Should Be   ${expected_alerts}
    


Short Password
    [Tags]      attemp_signup       short_pass
    [Template]  Signup With Short Pass
    1
    12
    123
    1234
    12345
    a
    a2
    ab3
    ab3c
    a23bc
    -1
    acb#1

*Keywords*
Signup With Short Pass
    [Arguments]     ${short_pass}

    ${user}     Create Dictionary
    ...         name=Felipe                 lastname=Meyer
    ...         email=felipe@felipe.com     password=${short_pass}


    Go To Signup Form
    Fill Signup Form            ${user}
    Submit Signup Form
    Alert Span Should Be     Informe uma senha com pelo menos 6 caracteres
