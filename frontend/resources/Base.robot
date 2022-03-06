*Settings*
Documentation       Base test

Library     Browser
Library     factories/Users.py
Library     Utils.py
Library     Collections

Resource    actions/_SharedActions.robot
Resource    actions/AuthActions.robot
Resource    actions/GeekActions.robot
Resource    actions/SignupActions.robot
Resource    Helpers.robot

*Variables*
${BASEURL}      https://getgeeks-ffmeyer.herokuapp.com

*Keywords*
Start session 
    #New Browser             chromium        headless=False      slowMo=00:00:00.5
    #${context}              New Context         bypassCSP=True
    New Browser             ${BROWSER}          headless=${HEADLESS}      slowMo=00:00:00
    New Context             bypassCSP=True
    New Page                ${BASEURL}
    

After Test                  
    ${shot_name}        Screenshot Name
    Take Screenshot     fullPage=True       filename=${shot_name}