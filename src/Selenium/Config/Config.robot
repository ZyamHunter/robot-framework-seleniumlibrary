*** Settings ***
Library     SeleniumLibrary
Library     ../../Helpers/Get_Envs.py


*** Keywords ***
Acessar e-commerce
    ${ENVS}    Get Enviroment Variables
    Set Global Variable    ${ENVS}    ${ENVS}

    ${options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    # Call Method    ${options}    add_argument    --headless
    Create Webdriver    Chrome    options=${options}
    Maximize Browser Window

    Go To    ${ENVS['BASE_URL']}
    Set Selenium Timeout    30

Fechar navegador
    Sleep    1s
    Close Browser
