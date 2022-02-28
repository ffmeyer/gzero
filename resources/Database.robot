*Settings*

Documentation       Database Helpers

Library     DatabaseLibrary
Library     factories/Users.py

*Keywords*
Connect To Postgres

    Connect to Database     psycopg2
    ...                     nxvgtbar
    ...                     nxvgtbar
    ...                     22ymajSdE0lmq413hzEfCWBjRbmllhJa
    ...                     jelani.db.elephantsql.com
    ...                     5432

Reset Env

    Execute SQL String      DELETE FROM public.geeks;
    Execute SQL String      DELETE FROM public.users;

Insert User
    [Arguments]     ${u}



    ${hashed_pass}      Get Hashed Pass     ${u}[password]


    ${q}    Set Variable    INSERT INTO public.users (name, email, password_hash, is_geek) values ('${u}[name] ${u}[lastname]', '${u}[email]', '${hashed_pass}', false);
    #Log To Console      ${q}
    Execute SQL String  ${q}


Users Seed
    ${user}         Factory User Login
    Insert User     ${user}