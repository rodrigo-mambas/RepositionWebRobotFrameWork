*** Settings ***

Documentation   Cenários de testes relacionados ao cadastro de novo usuario.

Resource    ../../src/config/package.resource

Test Setup          Abrir sessão
#Test Teardown       Encerrar sessão

*** Test Cases ***
Cenario: Validar cadastro com sucesso meu
    [Tags]      CADASTRO1    POSITIVO
    # Dado que o cliente esteja na tela inicial da aplicação
    Dado tela inicial da aplicação      ${HOME.BOTAO_SIGNIN}
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

Cenario: Validar cadastro com sucesso
    [Tags]      CADASTRO    POSITIVO
    # Dado que o cliente esteja na tela inicial da aplicação
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de Login
    E acessar a tela de cadastro
    # E preencher o formulario com dados válidos
    # Quando clicar em Submit

