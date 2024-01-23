*** Settings ***
Documentation       Teste regressivo de login

Resource            ../Pages/Home.robot
Resource            ../Pages/Login.robot


*** Keywords ***
CT: Logar com sucesso
    [Documentation]    Realiza o login com sucesso e verifica se está na página home
    Dado que esteja na página home
    E clique em Sign In
    Quando preencher as credenciais corretamente
    E confirmar o login
    Então será logado no sistema

CT: Login com erro
    [Documentation]    Realiza o login com senha errada e espera que o login não seja efetuado
    Dado que esteja na página home
    E clique em Sign In
    Quando preencher as credenciais incorretamente
    E confirmar o login
    Mas não será logado no sistema
