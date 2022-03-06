*Settings*
Documentation   Users route test suite

Resource        ${EXECDIR}/resources/Base.robot

*Test Cases*
Add new User


    ${payload}      Factory new User

    ${response}             POST User       ${payload}
    Status Should Be        201             ${response}

