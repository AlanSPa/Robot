*** Settings ***
Library     SeleniumLibrary

*** Variables ***
${url}      https://www.buscandonobanco.com.br/

*** Keywords ***
Nova sessão
    Open Browser        ${url}      chrome

Encerra sessão
    Capture Page Screenshot
    Close Browser