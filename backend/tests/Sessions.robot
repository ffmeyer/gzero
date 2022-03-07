*Settings*
Documentation   session route test suite

Resource        ${EXECDIR}/resources/Base.robot

*Variables*
&{inv_pass}		email=andreiac@gmail.com        password=abc123
&{inv_email}    email=andreia.com.br            password=pwd123
&{email_404}    email=andreiac@404.com          password=pwd123
&{empty_email}  email=${EMPTY}                  password=pwd123
&{wo_email}		password=pwd123
&{empty_pass}   email=andreiac@gmail.com        password=${EMPTY}
&{wo_pass}		email=andreiac@gmail.com		 



*Test Cases*
User Session
    [Tags]      login

    #criacao de usuario valido
    ${payload}              Factory User Session       signup

    POST User  ${payload}

    ${payload}              Factory User Session       login
    
    ${response}             POST Session            ${payload}
    
    Status Should Be        200                     ${response}

    ${size}                 Get Length              ${response.json()}[token]
    ${expected_size}        Convert To Integer      ${size}

    Should Be Equal         ${expected_size}        ${size} 
    Should Be Equal         10d                     ${response.json()}[expires_in] 

Should Not Get Token
    [Template]      Attempt Post Session
    
    ${inv_pass}         401     Unauthorized
    ${inv_email}        400     Incorrect email
    ${email_404}        401     Unauthorized
    ${empty_email}      400     Required email
    ${wo_email}         400     Required email
    ${empty_pass}       400     Required pass
    ${wo_pass}		    400     Required pass

*Keywords*

Attempt Post Session
    [Arguments]     ${payload}      ${status_code}      ${error_message}

    ${response}     POST Session  ${payload}

    Status Should Be        ${status_code}          ${response}
    Should Be Equal         ${error_message}        ${response.json()}[error]
