*Settings*
Documentation       Base test

Library     Browser
Library     factories/Users.py
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
    New Browser     chromium        headless=False      slowMo=00:00:00.5
    New Page        ${BASEURL}

Finish session
    Take Screenshot