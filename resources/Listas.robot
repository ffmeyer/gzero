*Settings*
Documentation       Sigup Test Suite 

Resource        ${EXECDIR}/resources/base.robot

Library     Collections 


*Test Cases*
Trabalhando com Listas
    #lista de dados string 
    @{avengers}     Create List     Tony Stark      Kamalakhan      Steve Rogers

    Append To List      ${avengers}     Bruce Banner
    Append To List      ${avengers}     Scott Lang

    FOR  ${a}       IN      @{avengers}
        Log To Console      ${a}
    END


    @{avengers2}     Create List     Tony Stark      Kamalakhan      Steve Rogers      Bruce Banner        Scott Lang
    Lists Should Be Equal       ${avengers}      ${avengers2}