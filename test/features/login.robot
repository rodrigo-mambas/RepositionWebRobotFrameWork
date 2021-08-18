*** Settings ***

Documentation   Cenários de testes relacionados ao login da aplicação.
    # Dado -> Pré requisito / estado atual
    # E -> passo complementar 
    # Quando -> ação para um resultado esperado
    # E -> passo complementar 
    # Entao -> resultado esperado

    # para executar os teste
    # robot -d test/result/ test/features/login.robot
    # para executar apenas um teste especifico
    # robot -d test/result/ -t "Cenario: Login com credenciais invalidos" test/features/login.robot
Resource    ../../src/config/package.resource

Test Setup          Abrir sessão
Test Teardown       Encerrar sessão

*** Test Cases ***
Cenario: Login com sucesso
    Dado que o cliente esteja na tela inicial da aplicação
    # E acessar a tela de Login
    E clicar no elemento     ${HOME.BOTAO_SIGNIN}
    Quando inserir os dados de login       EMAIL=rasafa9934@ovooovo.com      SENHA=Teste@123
    E clicar no elemento     ${LOGIN.BOTAO_SIGNIN}
    Então deve visualizae a tela My Account

Cenario: Login com credenciais invalidos
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de Login
    Quando inserir os dados de login        sddsd@sddf.com.br       erfdd
    E clicar no elemento     ${LOGIN.BOTAO_SIGNIN}
    Então deve visualizar a mensagem        ${LOGIN.TEXTO_ERRO}      Authentication failed.