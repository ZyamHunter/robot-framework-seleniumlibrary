*** Settings ***
Resource    ../Components/Click_Element.robot


*** Keywords ***
Quando clicar em Add to cart
    Clicar no elemento    //*[@title="Add to cart"]

E clicar em Proceed to checkout
    Clicar no elemento    //*[@title="Proceed to checkout"]

E clicar em Continue shopping
    Clicar no elemento    //*[@title="Continue shopping"]

Então poderá continuar navegando no site
    Clicar no elemento    //*[@id="block_top_menu"]/ul/li/a
    Wait Until Page Contains Element    //*[@class="product-container"]
