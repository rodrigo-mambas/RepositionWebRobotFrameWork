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
    # para executar uma tag especifica
    # robot -d test/result/ -i  POSITIVO test/features/login.robot
    # para excluir uma tag especifica
    # robot -d test/result/ -e  POSITIVO test/features/login.robot


Resource    ../../src/config/package.resource

Test Setup          Abrir sessão
# Test Teardown       Encerrar sessão

*** Test Cases ***
Cenario: Login com sucesso
    [Tags]      LOGIN       POSITIVO
    Dado que o cliente esteja na tela inicial da aplicação
    # E acessar a tela de Login
    E clicar no elemento     ${HOME.BOTAO_SIGNIN}
    Quando inserir os dados de login       EMAIL=${MASSA_DADOS.LOGIN.EMAIL}      SENHA=${MASSA_DADOS.LOGIN.SENHA}
    E clicar no elemento     ${LOGIN.BOTAO_SIGNIN}
    Então deve visualizae a tela My Account

Cenario: Login com credenciais invalidos
    [Tags]      LOGIN       NEGATIVO
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de Login
    Quando inserir os dados de login        sddsd@sddf.com.br       erfdd
    E clicar no elemento     ${LOGIN.BOTAO_SIGNIN}
    Então deve visualizar a mensagem        ${LOGIN.TEXTO_ERRO}      ${MENSAGENS.LOGIN.AUTHENTICATION_FAILED}

Cenario: Cadastro novo usuario
    [Tags]      CADASTRO    POSITIVO
    Dado que o cliente esteja na tela inicial da aplicação
    E clicar no elemento     ${HOME.BOTAO_SIGNIN}
    Quando inserir o email de cadastro      EMAIL=${MASSA_CADASTRO.EMAIL}
    E clicar no elemento     ${DADOSCADASTRO.BOTAO_CREATE}
    # Então deve visualizar a mensagem        ${DADOSCADASTRO.TITULO}      ${MENSAGENS.CADASTRO.TELA_CADASTRO}
    Quando inserir os dados de cadastro       
...     NOME=${MASSA_CADASTRO.NOME}      
...     SOBRENOME=${MASSA_CADASTRO.SOBRENOME}       
...     SENHA=${MASSA_CADASTRO.SENHA}       
...     NOME_END=${MASSA_CADASTRO.NOME_END}        
...     SOBRENOME_END=${MASSA_CADASTRO.SOBRENOME_END}       
...     ENDERECO1=${MASSA_CADASTRO.ENDERECO1}       
...     ENDERECO2=${MASSA_CADASTRO.ENDERECO2}

