*** Settings ***
Documentation       Keywords relacionados a tela home. teste git.

Resource            ../../config/package.resource

*** Keywords ***
Dado que o cliente esteja na tela inicial da aplicação
    Wait Until Element Is Visible   ${HOME.BOTAO_SIGNIN}

E acessar a tela de Login    
    Wait Until Element Is Visible   ${HOME.BOTAO_SIGNIN}
    Click Element                   ${HOME.BOTAO_SIGNIN}

