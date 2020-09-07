***Settings***
Documentation   Suíte dos testes de cadastro

Resource        ../resources/base.robot

Test Setup      Open Session
Test Teardown   Close Session 

***Test Cases***
Cadastro simples
    Dado que acesso a página principal
    Quando submeto o meu email "joao@gmail.com"
    Então devo ser autenticado

E-mail incorreto
    Dado que acesso a página principal
    Quando submeto o meu email "joao$gmail.com"
    Então devo ver a mensagem "Oops. Informe um email válido!"

E-mail não informado
    Dado que acesso a página principal
    Quando submeto o meu email "${EMPTY}"
    Então devo ver a mensagem "Oops. Informe um email válido!"