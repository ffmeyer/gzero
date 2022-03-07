
#Executando com pasta de logs 
#robot -d ./logs cadastro.robot

#passa o diretorio dos testes no comando (tests)
#robot -d ./logs tests

#Executando tags especificas
#robot -d ./logs -i inv_email cadastro.robot

#exclusao de tags especificas (remove o inv_email e faz os demais do cadastro.robot)
#robot -d ./logs -e inv_email cadastro.robot

#executando tasks sem gerar nenhum tipo de relatorio (executor do limpador de banco de dados)
#robot -l NONE -o NONE -r NONE tasks/Delorean.robot

robot -l NONE -o NONE -r NONE tasks/Delorean.robot
pabot -x xunit.xml -d ./logs -v BROWSER:chromium -v HEADLESS:True -e smoke tests
#pabot -d ./logs -i smoke -v BROWSER:chromium -v HEADLESS:true tests

#workaround para resolver problema dos reports sem imagem (sha1 para nomes de arquivo)
rm -rf ./logs/browser
mkdir ./logs/browser 
mkdir ./logs/browser/screenshot

cp -r $(find ./logs/pabot_results -type f -name "*.png") ./logs/browser/screenshot/
