*Settings*
Documentation       BeGeek Test Suite

Resource        ${EXECDIR}/resources/Base.robot

Test Setup      Start session 
Test Teardown   After Test

*Test Cases*
Be a Geek
    [Tags]      smoke
    ${user}     Factory User        be_geek

    Do Login  ${user}
    Go To Geek Form    
    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form
    Geek Form Should Be Success