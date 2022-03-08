*Settings*
Documentation       Base test

Library     Browser
Library     factories/Users.py
Library     Utils.py
Library     Collections
Library     String


Resource    actions/_SharedActions.robot
Resource    actions/AuthActions.robot
Resource    actions/GeekActions.robot
Resource    actions/SignupActions.robot
Resource    Helpers.robot
Resource    Services.robot

*Variables*
${BASEURL}      https://getgeeks-ffmeyer.herokuapp.com

*Keywords*
Start session 
    New Browser             ${BROWSER}        headless=${HEADLESS}      slowMo=00:00:00
    New Page                ${BASE_URL}
    Set Viewport Size       1280     768
    

After Test                  
    ${shot_name}        Screenshot Name
    Take Screenshot     fullPage=True       filename=${shot_name}
    