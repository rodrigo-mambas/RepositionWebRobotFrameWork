*** Settings ***
Documentation       configuração de inicialização e finalização dos teste.

*** Keywords ***
Abrir sessão
    # Abrir o navegador.
    Open Browser    http://automationpractice.com/index.php     ${Browser.Browser}
    Set Selenium Timeout    60
    # Maximizar o navegador
    Maximize Browser Window

Encerrar sessão
    Capture Page Screenshot
    Close Browser    