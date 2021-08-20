*** Settings ***
Documentation       Keywords relacionados a tela cadastro. 

Resource            ../../config/package.resource

*** Keywords ***
Quando inserir o email de cadastro
    [Arguments]     ${EMAIL}
    Wait Until Element Is Visible   ${DADOSCADASTRO.INPUT_EMAIL}
    Input Text      ${DADOSCADASTRO.INPUT_EMAIL}        ${EMAIL}

Quando inserir os dados de cadastro
    [Arguments]     ${NOME}        ${SOBRENOME}     ${SENHA}        ${NOME_END}     ${SOBRENOME_END}        ${ENDERECO1}        ${ENDERECO2}        ${CIDADE}       ${CEP}      ${CELULAR}      ${ALIAS}
    Wait Until Element Is Visible   ${DADOSCADASTRO.INPUT_NOME}
    Input Text      ${DADOSCADASTRO.INPUT_NOME}        ${NOME}
    Input Text      ${DADOSCADASTRO.INPUT_SOBRENOME}        ${SOBRENOME}    
    Input Text      ${DADOSCADASTRO.INPUT_SENHA}        ${SENHA}
    Input Text      ${DADOSCADASTRO.INPUT_NOME_END}        ${NOME_END}
    Input Text      ${DADOSCADASTRO.INPUT_SOBRENOME_END}        ${SOBRENOME_END}
    Input Text      ${DADOSCADASTRO.INPUT_ENDERECO_1}        ${ENDERECO1}
    Input Text      ${DADOSCADASTRO.INPUT_ENDERECO_2}        ${ENDERECO2}
    Input Text      ${DADOSCADASTRO.INPUT_CIDADE}        ${CIDADE}
    Input Text      ${DADOSCADASTRO.INPUT_CEP}        ${CEP}
    Input Text      ${DADOSCADASTRO.INPUT_CELULAR}        ${CELULAR}
    Input Text      ${DADOSCADASTRO.INPUT_ALIAS}        ${ALIAS}
    Click Element      ${DADOSCADASTRO.INPUT_AS} 
    Select From List By Value       //Select[@id='days']     2  
    Select From List By Value       //Select[@id='months']     2
    Select From List By Value       //Select[@id='years']     1980
    Select From List By Value       //Select[@id='id_state']     3


E acessar a tela de cadastro
    Wait Until Element Is Visible   ${DADOSCADASTRO.INPUT_EMAIL}
    # para debugar o fonte
    # Debug
    ${NOVO_EMAIL}       FakerLibrary.Email
    Input Text      ${DADOSCADASTRO.INPUT_EMAIL}       ${NOVO_EMAIL}        
    Click Element   ${DADOSCADASTRO.BOTAO_CREATE}

E preencher o formulario com dados válidos
    Wait Until Element Is Visible       ${CADASTRO.RADIO_MR}
    Click Element       ${CADASTRO.RADIO_MR}
    # Variavel global
    # Set Global Variables      ${FIRST_NOME}     ${NOME}
    # variavel criada apenas no cenario de teste
    # Set Test Variables      ${FIRST_NOME}     ${NOME}
    # variavel criada em um arquivo a parti
    #Set Suite Variables      ${FIRST_NOME}     ${NOME}
    ${NOME}       FakerLibrary.FirstName
    Set Test Variable      ${FAKE_NOME}     ${NOME}
    Input Text      ${CADASTRO.INPUT_NOME}      ${FAKE_NOME} 
    ${SOBRENOME}        FakerLibrary.lastname
    Set Test Variable      ${FAKE_LAST}         ${SOBRENOME}
    Input Text      ${CADASTRO.INPUT_SOBRENOME}     ${FAKE_LAST}   
    ${SENHA}        FakerLibrary.password   length=10   special_chars=True  digits=True     upper_case=True     lower_case=True 
    Set Test Variable      ${FAKE_SENHA}        ${SENHA}
    Input Text      ${CADASTRO.INPUT_SENHA}          ${FAKE_SENHA}
    Select From List By Value       ${CADASTRO.SELECT_DIA}      5
    Select From List By Value       ${CADASTRO.SELECT_MES}      3
    Select From List By Value       ${CADASTRO.SELECT_ANO}      1990
    Input Text  ${CADASTRO.INPUT_ENDERECO_1}        rua teste
    Input Text  ${CADASTRO.INPUT_ENDERECO_2}        apartamento 10
    Input Text  ${CADASTRO.INPUT_CIDADE}        Barueri
    Select From List By Label       ${CADASTRO.SELECT_ESTADO}       Arizona
    Input Text  ${CADASTRO.INPUT_CEP}       01234
    ${CELULAR}        FakerLibrary.phoneNumber
    Set Test Variable      ${FAKE_CELULAR}         ${CELULAR} 
    Input Text      ${CADASTRO.INPUT_CELULAR}       ${FAKE_CELULAR}       


Quando clicar no botao
    [Arguments]     ${ELEMENTO}
    Click Element   ${ELEMENTO}