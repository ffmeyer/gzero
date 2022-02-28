*Settings*

Documentation       Shared Actions



*Keywords*

Modal Content Should Be
    [Arguments]     ${expected_message}
    

    ${tittle}       Set Variable        css=.swal2-title
    ${content}      Set Variable        css=.swal2-html-container

    Wait For Elements State     ${tittle}     visible       5
    Get Text                    ${tittle}     equal         Oops...

    Wait For Elements State     ${content}     visible       5
    Get Text                    ${content}     equal         ${expected_message}