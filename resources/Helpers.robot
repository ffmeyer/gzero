
*Settings*
Documentation       Test Helpers
Resource        ${EXECDIR}/resources/Database.robot


*Keywords*
Add User From Database
    [Arguments]     ${user}
    
    Connect To Postgres
    Insert User     ${user}    
    Disconnect From Database
