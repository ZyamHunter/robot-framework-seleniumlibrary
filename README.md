# Projeto de automação Robot e selenium
Projeto criado para rodar testes automatizados de aceitação (e2e) no front-end, utilizando as tecnologias do Robot Framework e do Selenium. Os testes devem ser capazes de serem rodados localmente e na pipeline


# robot e selenium template
> Repositório de testes dedicados ao uso das mais variadas bibliotecas do robot framework com selenium

# Configuração do Ambiente

## Instalar Python 3.10

Certifique-se de ter o Python 3.10 instalado em seu sistema. Você pode baixá-lo no [site oficial do Python](https://www.python.org/).

## Instalar Ambiente Virtual

Instale a ferramenta `virtualenv` para criar ambientes virtuais de aprendizado:

> pip install virtualenv

## Criar um ambiente virtual:
> python -m venv project-venv

## Se você estiver usando o PowerShell e encontrar problemas para executar scripts, talvez precise alterar a política de execução temporariamente para permitir a execução de scripts:
> Set-ExecutionPolicy -Scope Process -ExecutionPolicy Bypass

## Ativar o ambiente virtual:
> .\project-venv\Scripts\activate

## Remover cache do pip
> pip cache remove *

## Desativar ambiente virtual
> deactivate

## Instalar dependências do Python
Primeiro ative o ambiente virtual para evitar erros de versão com outras bibliotecas instaladas
> pip install -r requirements.txt

## Instalar nvm:
Necessário para poder mudar a versão do Node para a usada no projeto
> https://github.com/nvm-sh/nvm/blob/master/README.md

## Instalar Node.js:
Ao instalar, provavelmente vários pacotes adicionais serão instalados, como chocolatery, etc.
> https://nodejs.org/en/download

## Modificar versão padrão do node para a usada no projeto:
> nvm use

## Instalar chromedriver
Acesse o site:
> https://chromedriver.chromium.org/downloads
Depois de baixar o arquivo, extraia da pasta zip e adicione o caminho do executável do chromedriver a variável PATH

## Lint do código
> robotidy src

<br/>

### ---- Diferenciais no projeto ----
<br/>

- Page Object
- Robot Framework
- Selenium
- Massa de Dados
- Geração de Report
- Report dos testes no Slack

<br/>

**Executar teste regressivo**
> npm run web
