
*Settings*
Documentation       Test Helpers
Resource        ${EXECDIR}/resources/Database.robot


*Keywords*
Add User From Database
    [Arguments]     ${user}
    
    Connect To Postgres
    Insert User     ${user}    
    Disconnect From Database

*Keywords*
Do Login
    [Arguments]     ${user}
    
    Go To Login Page
    Fill Credentials        ${user}
    Submit Credentials
    User Should Be Logged in        ${user}
    
