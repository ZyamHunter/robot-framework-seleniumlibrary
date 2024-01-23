*** Settings ***
Documentation       Teste regressivo de adesão de produtos ao carrinho

Resource            ../Pages/Home.robot
Resource            ../Pages/Product_List.robot
Resource            ../Pages/Product_Info.robot
Resource            ../Pages/Cart.robot


*** Keywords ***
CT: Adicionar produto ao carinho
    [Documentation]    Adiciona o produto no carrinho e verifica se o produto foi adicionado no carrinho
    Dado que esteja na página home
    E clique em alguma seção de produto
    E selecione o produto que deseja comprar
    Quando clicar em Add to cart
    E clicar em Proceed to checkout
    Então o produto será adicionado ao carrinho

CT: Adicionar produto e continuar navegando no site
    [Documentation]    Adiciona o produto no cartinho e continua navegando no site
    Dado que esteja na página home
    E clique em alguma seção de produto
    E selecione o produto que deseja comprar
    Quando clicar em Add to cart
    E clicar em Continue shopping
    Então poderá continuar navegando no site
