*** Settings ***
Resource    ../Components/Click_Element.robot


*** Keywords ***
Então o produto será adicionado ao carrinho
    Clicar no elemento    //*[@class="shopping_cart"]

    Wait Until Page Contains Element    //*[@id="cart_title"]
    Wait Until Page Contains Element    //*[@id="order-detail-content"]
