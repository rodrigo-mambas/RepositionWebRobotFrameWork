*** Settings ***
Documentation       Keywords relacionados a tela cadastro. 

Resource            ../../config/package.resource

*** Keywords ***
Quando inserir o email de cadastro
    [Arguments]     ${EMAIL}
    Wait Until Element Is Visible   ${DADOSCADASTRO.INPUT_EMAIL}
    Input Text      ${DADOSCADASTRO.INPUT_EMAIL}        ${EMAIL}

Quando inserir os dados de cadastro
    [Arguments]     ${NOME}        ${SOBRENOME}     ${SENHA}        ${NOME_END}     ${SOBRENOME_END}        ${ENDERECO1}        ${ENDERECO2}
    Wait Until Element Is Visible   ${DADOSCADASTRO.INPUT_NOME}
    Input Text      ${DADOSCADASTRO.INPUT_NOME}        ${NOME}
    Input Text      ${DADOSCADASTRO.INPUT_SOBRENOME}        ${SOBRENOME}    
    Input Text      ${DADOSCADASTRO.INPUT_SENHA}        ${SENHA}
    Input Text      ${DADOSCADASTRO.INPUT_NOME_END}        ${NOME_END}
    Input Text      ${DADOSCADASTRO.INPUT_SOBRENOME_END}        ${SOBRENOME_END}
    Input Text      ${DADOSCADASTRO.INPUT_ENDERECO_1}        ${ENDERECO1}
    Input Text      ${DADOSCADASTRO.INPUT_ENDERECO_2}        ${ENDERECO2}

E acessar a tela de cadastro
    Wait Until Element Is Visible   ${DADOSCADASTRO.INPUT_EMAIL}
    # para debugar o fonte
    # Debug
    ${NOVO_EMAIL}       FakerLibrary.Email
    Input Text      ${DADOSCADASTRO.INPUT_EMAIL}       ${NOVO_EMAIL}   
    Click Element   ${DADOSCADASTRO.BOTAO_CREATE}
