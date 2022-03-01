*Settings*
Documentation       Attempt BeGeek Test Suite

Resource        ${EXECDIR}/resources/Base.robot

Library     Collections

Suite Setup         Start Session For Attempt Be Geek 
Test Template       Attempt Be a Geek

*Variables*
${long_desc}     Instalo Distros Ubuntu, Debian, ElementaryOS,  PopOS,  Linux Mint, Kurumin, Mandrake, Connectiva, Fedora, Redhat, Cent OS, Slackware, Gentoo, Archlinux, Kubuntu, Xubuntu, Suse, Mandriva, Edubuntu, KateOS, Sabayon Linux, Manjaro, Big Linux, ZorinOS, Nitrux, Unity

*Test Cases*  
Short Desc			desc            Formato seu pc      A descrição deve ter no minimo 80 caracteres
long Desc			desc            ${long_desc}        A descrição deve ter no máximo 255 caracteres
Empty Desc			desc            ${EMPTY}            Informe a descrição do seu trabalho
Whats Only Ddd		whats           11                  O Whatsapp deve ter 11 digitos contando com o DDD
Whats Only Number	whats           999999999           O Whatsapp deve ter 11 digitos contando com o DDD
Empty Whats			whats           ${EMPTY}            O Whatsapp deve ter 11 digitos contando com o DDD
Cost Letters        cost            aaaa                Valor hora deve ser numérico
Cost Alpha			cost            aa12                Valor hora deve ser numérico
Cost Special Chars	cost            $%^&                Valor hora deve ser numérico
Empty Cost			cost            ${EMPTY}            Valor hora deve ser numérico
No Printer Repair   printer_repair  ${EMPTY}            Por favor, informe se você é um Geek Supremo
No Work             work            ${EMPTY}            Por favor, selecione o modelo de trabalho

    
*Keywords*
Attempt Be a Geek
    [Arguments]     ${key}      ${input_field}      ${output_message}

    ${user}     Factory User        attempt_be_geek

    Set To Dictionary      ${user}[geek_profile]       ${key}      ${input_field}

    Fill Geek Form      ${user}[geek_profile]
    Submit Geek Form
    Alert Span Should Be  ${output_message}

    After Test


Start Session For Attempt Be Geek

    ${user}     Factory User        attempt_be_geek

    Start session 
    Do Login  ${user}
    Go To Geek Form

