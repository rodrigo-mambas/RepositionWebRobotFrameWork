*** Settings ***
Documentation       configuração de inicialização e finalização dos teste.

*** Keywords ***
Abrir sessão
    # Abrir o navegador.
    # executar abrindo o navegador
    # Open Browser    http://automationpractice.com/index.php     ${Browser.Browser}
    # executar sem abrir o navegador
    # Open Browser    http://automationpractice.com/index.php     headlesschrome
    Open Browser    ${CONFIG.URL}     ${CONFIG.NAVEGADOR}
    Set Selenium Timeout    ${CONFIG.TIMEOUT}
    # Maximizar o navegador
    Maximize Browser Window

Encerrar sessão
    Capture Page Screenshot
    Close Browser    