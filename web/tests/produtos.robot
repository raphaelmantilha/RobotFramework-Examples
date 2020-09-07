***Settings***
Documentation       Cadastro de produtos/pratos
...                 Sendo um cozinheiro amador
...                 Quero cadastrar meus melhores pratos
...                 Para que eu possa cozinhá-los para outras pessoas

Resource        ../resources/base.robot

Test Setup      Login Session       raphael@gmail.com
Test Teardown   Close Session

***Variables***
&{nhoque}=      img=nhoque.jpg   nome=Nhoque molho páprica       tipo=Massas     preco=20.00

***Test Cases***
Novo prato
    Dado que "${nhoque}" é um dos meus pratos
    Quando faço o cadastro deste item
    Então devo ver este prato no meu dashboard

