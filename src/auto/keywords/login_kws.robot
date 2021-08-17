*** Settings ***
Documentation       Keywords relacionados a tela home.

Resource            ../../config/package.resource

*** Keywords ***
Quando realizar login com sucesso
    Wait Until Element Is Visible   ${LOGIN.INPUT_EMAIL}
    Input Text      ${LOGIN.INPUT_EMAIL}        ${DADOSACESSO.LOGIN}
    Input Text      ${LOGIN.INPUT_SENHA}        ${DADOSACESSO.SENHA}
    Click Element       ${LOGIN.BOTAO_SIGNIN}
