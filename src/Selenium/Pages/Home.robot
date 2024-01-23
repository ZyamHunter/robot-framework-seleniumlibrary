*** Settings ***
Resource    ../Components/Click_Element.robot
Resource    ../Resources/Home.robot


*** Keywords ***
Dado que esteja na página home
    Wait Until Page Contains Element    ${SEARCH_FIELD}

E clique em alguma seção de produto
    Clicar no elemento    //*[@id="block_top_menu"]/ul/li/a

E clique em Sign In
    Clicar no elemento    //*[@title="Log in to your customer account"]

Então será logado no sistema
    Wait Until Page Contains Element    ${SEARCH_FIELD}
