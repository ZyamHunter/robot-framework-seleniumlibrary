*** Settings ***
Resource    ../Components/Click_Element.robot


*** Keywords ***
E selecione o produto que deseja comprar
    Clicar no elemento    //*[@class="product-container"]
