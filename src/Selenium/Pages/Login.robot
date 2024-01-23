*** Settings ***
Library     FakerLibrary
Resource    ../Components/Input_Text.robot
Resource    ../Components/Click_Element.robot


*** Keywords ***
Quando preencher as credenciais corretamente
    Inserir texto    //*[@id="email"]    ${ENVS['USER_EMAIL']}
    Inserir texto    //*[@id="passwd"]    ${ENVS['USER_PASSWORD']}

E confirmar o login
    Clicar no elemento    //*[@id="SubmitLogin"]

Quando preencher as credenciais incorretamente
    ${WRONG_PASSWORD}    FakerLibrary.Password
    ${WRONG_USER}    FakerLibrary.User Name

    Inserir texto    //*[@id="email"]    ${WRONG_USER}
    Inserir texto    //*[@id="passwd"]    ${WRONG_PASSWORD}

Mas não será logado no sistema
    Wait Until Page Contains Element    //*[@id="SubmitLogin"]
