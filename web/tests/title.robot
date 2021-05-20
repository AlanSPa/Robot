*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão


*** Test Cases ***
Should See Page Title
    Title Should be     Buscando no Banco | Banco de Dados
