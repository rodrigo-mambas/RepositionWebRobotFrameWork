*** Settings ***
Documentation       keywords genericas.

*** Keywords ***
E clicar no elemento
    [Arguments]     ${ELEMENTO}
    Wait Until Element Is Visible       ${ELEMENTO}
    Click Element       ${ELEMENTO}

Então deve visualizar a mensagem
    [Arguments]     ${ELEMENTO}         ${MENSAGEM_ESPERADA}
    Wait Until Element Is Visible      ${ELEMENTO} 
    ${MENSAGEM_ATUAL}       Get Text        ${ELEMENTO}
    Should Be Equal     ${MENSAGEM_ATUAL}        ${MENSAGEM_ESPERADA}

Dado tela inicial da aplicação
    [Arguments]     ${ELEMENTO}
    Wait Until Element Is Visible   ${ELEMENTO}    