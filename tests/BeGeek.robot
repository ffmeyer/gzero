*Settings*
Documentation       BeGeek Test Suite

Resource        ${EXECDIR}/resources/Base.robot


Test Setup      Start session 
Test Teardown   Finish session


*Test Cases*
Be a Geek
    [Tags]      Login-geek
    ${user}     Factory User        be_geek

    Do Login  ${user}
    Go To Geek Form    
    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form
    Geek Form Should Be Sucess

Short Description
    [Tags]      Login-geek
    ${user}     Factory User        short_desc

    Do Login  ${user}
    Go To Geek Form    
    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be        A descrição deve ter no minimo 80 caracteres


*Keywords*
Go To Geek Form
    Click                       css=a[href="/be-geek"] >> text=Seja um Geek    
    Wait For Elements State     css=.be-geek-form     visible     5


Fill Geek Form
    [Arguments]     ${geek_profile}

    Fill Text           id=whatsapp                         ${geek_profile}[whats]
    Fill Text           id=desc                             ${geek_profile}[desc]
    Select Options By   id=printer_repair       text        ${geek_profile}[printer_repair]
    Select Options By   id=work                 text        ${geek_profile}[work]
    Fill Text           id=cost                             ${geek_profile}[cost]

Submit Geek Form
    Click               css=button >> text=Quero ser um Geek

Geek Form Should Be Sucess
    ${expected_message}     Set Variable        Seu cadastro está na nossa lista de geeks. Agora é só ficar de olho no seu WhatsApp.        

    Wait For Elements State     css=p >> text=${expected_message}       visible     5