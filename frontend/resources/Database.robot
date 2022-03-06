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
    Execute SQL String  ${q}


Users Seed
    ${user}         Factory User                    login
    Insert User     ${user}

    ${be_geek_user}         Factory User            be_geek
    Insert User             ${be_geek_user}

    ${attempt_be_geek_user}      Factory User       attempt_be_geek
    Insert User             ${attempt_be_geek_user}    