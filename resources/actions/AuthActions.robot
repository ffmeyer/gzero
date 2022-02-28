*Settings*
Documentation       Authentication Actions

#Library     Collections 

*Variables*
${INPUT_EMAIL}      id=email
${INPUT_PASS}      id=password

*Keywords*
Go To Login Page

    Go to       ${BASEURL}
    Wait For Elements State      css=.login-form     visible     5

Fill Credentials        
    [Arguments]             ${user}
    Fill Input Email        ${user}
    Fill Input Password     ${user}

Fill Input Email        
    [Arguments]     ${user}
    Fill Text       ${INPUT_EMAIL}      ${user}[email]

Fill Input Password
    [Arguments]     ${user}    
    Fill Text       ${INPUT_PASS}       ${user}[password]

Submit Credentials
    Click       css=.submit-button >> text=Entrar


User Should Be Logged in
    [Arguments]     ${user}

    ${expected_fullname}          Set Variable      ${user}[name] ${user}[lastname]
    ${element}                    Set Variable      css=a[href='/profile']

    Wait For Elements State     ${element}      visible     5    
    Get Text            ${element}      contains        ${expected_fullname}

Should be Type Email
    Get Property       ${INPUT_EMAIL}    type    equal       email