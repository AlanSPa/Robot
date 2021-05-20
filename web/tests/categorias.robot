*** Settings ***
Resource        base.robot

Test Setup      Nova sessão
Test Teardown   Encerra sessão



*** Test Cases ***

Acessando Categoria Oracle
    [tags]  	Oracle
                              
    Click Element               xpath://*[@id="content-wrapper"]/div[1]/div/nav/ul/li[2]
    Title Should be             Oracle

Acessando Categoria Postgres
    [tags]  	Postgres

    Click Element               xpath://*[@id="content-wrapper"]/div[1]/div/nav/ul/li[3]/a
    Title Should be             Postgres

Acessando Categoria MySQL
    [tags]      MySQL          

    Click Element               xpath://*[@id="content-wrapper"]/div[1]/div/nav/ul/li[4]/a
    Title Should be             MySQL


