#Exceutando com pasta de logs 
#robot -d ./logs cadastro.robot
#Executando tags especificas
#robot -d ./logs -i inv_email cadastro.robot
#exclusao de tags especificas (remove o inv_email e faz os demais do cadastro.robot)
#robot -d ./logs -e inv_email cadastro.robot
#passa o diretorio dos testes no comando (tests)
#robot -d ./logs tests
#executando tasks sem gerar nenhum tipo de relatorio (executor do limpador de banco de dados)
#robot -l NONE -o NONE -r NONE tasks/Delorean.robot
#robot -d ./logs tests
#robot -d ./logs -i i_email tests/Login.robot
robot -l NONE -o NONE -r NONE tasks/Delorean.robot
robot -d ./logs tests
#robot -d ./logs tests/BeGeek.robot