*** Settings ***

Documentation   Cenários de testes relacionados ao cadastro de novo usuario.

Resource    ../../src/config/package.resource

Test Setup          Abrir sessão
Test Teardown       Encerrar sessão

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
...     NOME=${MASSA_CADASTRO1.NOME}      
...     SOBRENOME=${MASSA_CADASTRO1.SOBRENOME}       
...     SENHA=${MASSA_CADASTRO1.SENHA}       
...     NOME_END=${MASSA_CADASTRO1.NOME_END}        
...     SOBRENOME_END=${MASSA_CADASTRO1.SOBRENOME_END}       
...     ENDERECO1=${MASSA_CADASTRO1.ENDERECO1}       
...     ENDERECO2=${MASSA_CADASTRO1.ENDERECO2}
...     CIDADE=${MASSA_CADASTRO1.CIDADE}
...     CEP=${MASSA_CADASTRO1.CEP}
...     CELULAR=${MASSA_CADASTRO1.CELULAR}
...     ALIAS=${MASSA_CADASTRO1.ALIAS}
    E clicar no elemento        ${DADOSCADASTRO.BOTAO_REGISTER}
    Então deve visualizae a tela My Account

Cenario: Validar cadastro com sucesso meu fake
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
...     CIDADE=${MASSA_CADASTRO.CIDADE}
...     CEP=${MASSA_CADASTRO.CEP}
...     CELULAR=${MASSA_CADASTRO.CELULAR}
...     ALIAS=${MASSA_CADASTRO.ALIAS}
    E clicar no elemento        ${DADOSCADASTRO.BOTAO_REGISTER}
    Então deve visualizae a tela My Account    

Cenario: Validar cadastro com email já cadastrado meu
    [Tags]      CADASTRO1    NEGATIVO
    # Dado que o cliente esteja na tela inicial da aplicação
    Dado tela inicial da aplicação      ${HOME.BOTAO_SIGNIN}
    E clicar no elemento     ${HOME.BOTAO_SIGNIN}
    Quando inserir o email de cadastro      EMAIL=${MASSA_CADASTRO.EMAIL}
    E clicar no elemento     ${DADOSCADASTRO.BOTAO_CREATE}
    Então deve visualizar a mensagem        ${DADOSCADASTRO.TEXTO_ERRO}      ${MENSAGENS.CADASTRO.TELA_CADASTRO}

Cenario: Validar cadastro com sucesso
    [Tags]      CADASTRO    POSITIVO
    Dado que o cliente esteja na tela inicial da aplicação
    E acessar a tela de Login
    E acessar a tela de cadastro
    E preencher o formulario com dados válidos
    Quando clicar no botao      ${CADASTRO.BOTAO_REGISTER}
    Então deve visualizae a tela My Account

