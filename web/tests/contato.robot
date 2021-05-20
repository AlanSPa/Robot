*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão



*** Test Cases ***

Preenchendo Formulário

    Preencher e Enviar  John Connor     john@resistencia.com        A Skynet está chegando

*** Keywords ***
Preencher e Enviar
    [Arguments]         ${nome}   ${email}  ${mensagem}

    Input Text          css:input[name=nome]                        ${nome}
    Sleep   1
    Input Text          css:input[name=email]                       ${email}
    Sleep   1
    Input Text          id:textarea_comp-kow9eqmh                   ${mensagem}
    Sleep   2
    Click Element       class:nr31w
    Sleep   2

    Page Should Contain     Obrigado pelo contato!

