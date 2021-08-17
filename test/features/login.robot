*** Settings ***

Documentation   Cenários de testes relacionados ao login da aplicação.
    # Dado -> Pré requisito / estado atual
    # E -> passo complementar 
    # Quando -> ação para um resultado esperado
    # E -> passo complementar 
    # Entao -> resultado esperado

    # para executar os teste
    # robot -d test/result/ test/features/login.robot
Resource    ../../src/config/package.resource

Test Setup          Abrir sessão
Test Teardown       Encerrar sessão

*** Test Cases ***
Cenario: Login com sucesso
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de Login
    Quando realizar login com sucesso
    Então deve visualizae a tela My Account
