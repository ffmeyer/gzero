*Settings*

Documentation       Sessions route

*Variables*

*Keywords*
POST User
    [Arguments]     ${payload}

    ${response}     POST
    ...             ${API_USERS}/users
    ...             json=${payload}
    ...             expected_status=any


    [return]        ${response}