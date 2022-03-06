*Settings*
Documentation       Signup Actions

*Keywords*
Go To Signup Form

    Go to       ${BASEURL}/signup
    Wait For Elements State      css=.signup-form     visible     5

Fill Signup Form

    [Arguments]     ${user}
    
    Fill Text       id=name            ${user}[name]
    Fill Text       id=lastname        ${user}[lastname]
    Fill Text       id=email           ${user}[email]
    Fill Text       id=password        ${user}[password]
    
    
Submit Signup Form
    Click       css=.submit-button >> text=Cadastrar
    

User Should Be Registered
    ${expected_message}     Set Variable        css=p >> text=Agora você faz parte da Getgeeks. Tenha uma ótima experiência.
    Wait For Elements State     ${expected_message}     visible     5

Alert Span Should Be
    [Arguments]                 ${expected_alert}

    Wait For Elements State     css=span[class=error] >> text=${expected_alert}
    ...     visible       5

Alert Spans Should Be
    [Arguments]                 ${expected_alerts}


    @{got_alerts}       Create List
    
    #pega os spans dos erros (todos os elementos)
    ${spans}            Get Elements        xpath=//span[@class="error"]
    
    FOR     ${span}     IN                  @{spans}
    #itera sobre eles pegando seus textos    
        ${text}         Get Text            ${span}
    #inclui na lista    
        Append To List  ${got_alerts}       ${text}

    END

    Lists Should Be equal       ${expected_alerts}      ${got_alerts}