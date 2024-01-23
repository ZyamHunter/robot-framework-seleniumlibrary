*** Settings ***
Library     SeleniumLibrary
Library     ../../Helpers/Get_Envs.py


*** Keywords ***
Acessar e-commerce
    ${ENVS}    Get Enviroment Variables
    Set Global Variable    ${ENVS}    ${ENVS}

    ${options}    Evaluate    sys.modules['selenium.webdriver'].ChromeOptions()    sys, selenium.webdriver
    ${prefs}    Evaluate
    ...    {'profile.default_content_setting_values.media_stream_mic': 1, 'profile.default_content_setting_values.media_stream_camera': 1, 'profile.default_content_setting_values.geolocation': 1, 'profile.default_content_setting_values.notifications': 1}
    # Call Method    ${options}    add_argument    --headless
    Call Method    ${options}    add_argument    --disable-infobars
    Call Method    ${options}    add_argument    use-fake-device-for-media-stream
    Call Method    ${options}    add_argument    use-fake-ui-for-media-stream
    Call Method    ${options}    add_experimental_option    prefs    ${prefs}
    Create Webdriver    Chrome    options=${options}
    Maximize Browser Window

    Go To    ${ENVS['BASE_URL']}
    Set Selenium Timeout    30

Fechar navegador
    Sleep    1s
    Close Browser
