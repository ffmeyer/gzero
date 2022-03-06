
# # BOOT Camp Gravidade Zero QA ninja

Automação de testes em Python / RobotFramework / Playwright

front end: http://getgeeks-ffmeyer.herokuapp.com/


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
### Sobre o Pabot e performance de testes em paralelo
obs.: Usando ambiente docker / nuvem, é possivel que tenha uma performance inferior, de acordo com a quantidade disponivel de cores para ser utilizado. caso a maquina que executa os testes tenha somente um core, não haverá paralelismo, não se beneficiando da ferramenta pabot.

## Pacotes (pypi) 

- [bcrypt](https://pypi.org/project/bcrypt/)
- [Faker](https://pypi.org/project/Faker/)
- [psycopg2](https://pypi.org/project/psycopg2/)
- [robotframework-browser](https://pypi.org/project/robotframework-browser/)
- [robotframework-databaselibrary](https://pypi.org/project/robotframework-databaselibrary/)
- [robotframework-pabot](https://pypi.org/project/robotframework-pabot/)

## Autores

- [@Felipe Meyer](https://www.github.com/ffmeyer)