*** Settings ***
Documentation       Keywords relacionados a tela home.

*** Keywords ***
Então deve visualizae a tela My Account
    Wait Until Element Is Visible   ${MINHA_CONTA.TITULO}
    ${TITULO_ATUAL}     Get Text        ${MINHA_CONTA.TITULO}
    Should Be Equal     ${TITULO_ATUAL}     MY ACCOUNT      ignore_case=false