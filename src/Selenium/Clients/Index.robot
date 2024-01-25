*** Settings ***
Documentation       Arquivo dedicado a organização e chamada dos casos de teste

Resource            ../Config/Config.robot
Resource            ../TestCases/Cart.robot
Resource            ../TestCases/Login.robot

Test Setup          Acessar e-commerce
Test Teardown       Fechar navegador


*** Test Cases ***
Login válido
    [Tags]    login
    CT: Logar com sucesso

Login inválido
    [Tags]    login
    CT: Login com erro

Adicionar produto e continuar navegando
    [Tags]    cart
    CT: Adicionar produto e continuar navegando no site

Adicionar produto no carinho
    [Tags]    cart
    CT: Adicionar produto ao carinho
