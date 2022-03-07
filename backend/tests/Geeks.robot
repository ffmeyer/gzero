*Settings*
Documentation   session route test suite

Resource        ${EXECDIR}/resources/Base.robot

*Test Cases*
Be a Geek


    #esse usuario eh um cliente comum
    ${user}             Factory Be Geek
    Remove User         ${user}
    Post User           ${user}

    #esse usuario possui um token valido
    ${token}            Get Token       ${user}    
    
    #Quando faco um post na rota /Geeks
    ${response}         POST Geek       ${token}        ${user}[geek_profile]
    
    #Entao deve retornar 201
    Status Should Be    201             ${response}

    #E ao consultar esse perfil na api users
    ${response}         GET User        ${token}

    #Entao o Perfil Geek deve ser retornado
    Should Be Equal As Strings      ${user}[name]            ${response.json()}[name]
    Should Be Equal As Strings      ${user}[email]           ${response.json()}[email]




    
    Should Be Equal As Strings      ${user}[geek_profile][whatsapp]         ${response.json()}[whatsapp]
    Should Be Equal As Strings      ${user}[geek_profile][desc]             ${response.json()}[desc]
    Should Be Equal As Strings      ${user}[geek_profile][printer_repair]   ${response.json()}[printer_repair]
    Should Be Equal As Strings      ${user}[geek_profile][work]             ${response.json()}[work]
    
    #convertendo valor q vem da api 100.00 para strings
    #foi necessario converter ambos para float
    ${expected_float}       Convert To Number        ${user}[geek_profile][cost]
    ${got_float}            Convert To Number        ${response.json()}[cost]


    Should Be Equal                 ${expected_float}       ${got_float}
    
    Should Be Equal As Strings      None                    ${response.json()}[avatar]
    Should Be Equal As Strings      True                    ${response.json()}[is_geek]











Get Geeks List

    ${user}             Factory Search For Geeks
    POST User           ${user}
    ${token}            Get Token       ${user}

    ${response}         GET Geeks       ${token}
    Status Should Be    200             ${response}


    ${total}            Get Length      ${response.json()}[Geeks]
    Should Be True       ${total} > 0