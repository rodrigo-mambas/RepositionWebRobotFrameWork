*** Settings ***
Documentation   Dependências do projeto

# Dependencias
Library     SeleniumLibrary
Library     FakerLibrary            locale=pt_BR
Library     DebugLibrary

# Keywords
Resource    setup.robot
Resource    ../auto/keywords/home_kws.robot
Resource    ../auto/keywords/login_kws.robot
Resource    ../auto/keywords/minhaconta_kws.robot
Resource    ../auto/keywords/common_kws.robot
Resource    ../auto/keywords/cadastro_kws.robot


# Elementos
Resource   ../auto/elements/home_ets.resource
Resource   ../auto/elements/login_ets.resource
Resource   ../auto/elements/minhaconta_ets.resource
Resource    ../auto/elements/cadastro_ets.resource

# Dados
Variables    ../auto/data/dados.yaml
Variables    ../auto/data/mensagens.yaml

# Setup
Variables    ../config/setup.yaml