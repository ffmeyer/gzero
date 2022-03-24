
# BOOT Camp Gravidade Zero QA ninja

Automação de testes em Python / RobotFramework / Playwright

frontend: http://getgeeks-ffmeyer.herokuapp.com/

## Melhores Praticas incluidas
- Uso de SharedActions (app actions)
- Independencia de cada cenário de teste.
- Geração de screenshot apos o termino de cada teste.
- Geração de massa de dados fixas (factories) para o testes controlados.
- Geração de relatorio adicional no formato xunit
- Configurado no GitHubActions o reteste a cada novo commit.

## Cenarios automatizados
#### Testes de API
- Criação / atualização / deleção de usuario de usuario,
- Cenários de busca de consultor (geek)
- Cenarios de atualização de usuario de cliente para consultor (geek)

#### Testes de frontend
- Cenarios de cadastro de usuário
- Cenários de Login
- Cenários de busca de consultor (geek)
- Cenários de atualização de usuario de cliente para consultor (geek)


## Rodando os testes

Para rodar os testes, rode o seguinte comando

```bash
  Para uso em desenvolvimento
  robot -d ./logs tests
```

```bash
  Para execução de testes CLI
  robot -d ./logs -v BROWSER:chromium -v HEADLESS:True tests
```

```bash
  Para execução de testes em paralelo (pabot)
  pabot -d ./logs -v BROWSER:chromium -v HEADLESS:True tests
```
## Sobre o Pabot e performance de testes em paralelo
obs.: Usando ambiente docker / nuvem, é possivel que tenha uma performance inferior, de acordo com a quantidade disponivel de cores para ser utilizado. caso a maquina que executa os testes tenha somente um core, não haverá paralelismo, não se beneficiando da ferramenta pabot.

## Pacotes (pypi)

- [bcrypt](https://pypi.org/project/bcrypt/)
- [Faker](https://pypi.org/project/Faker/)
- [psycopg2](https://pypi.org/project/psycopg2/)
- [requests](https://pypi.org/project/requests/)
- [robotframework](https://pypi.org/project/robotframework/)
- [robotframework-browser](https://pypi.org/project/robotframework-browser/)
- [robotframework-databaselibrary](https://pypi.org/project/robotframework-databaselibrary/)
- [robotframework-pabot](https://pypi.org/project/robotframework-pabot/)
- [robotframework-requests](https://pypi.org/project/robotframework-requests/)

## Autores

- [Felipe Meyer](https://www.github.com/ffmeyer)
