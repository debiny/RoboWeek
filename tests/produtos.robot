***Settings***
Documentation       Cadastro de produtos/pratos
...                 Sendo um cozinheiro amados
...                 Quero cadastrar meus melhores pratos
...                 Para que eu possa cozinha-los para outras pessoas

Resource        ../resources/base.robot

Test Setup  Login Session   joao@gmail.com
Test Teardown   Close Session

***Variables***
&{nhoque}=      nome=Nhoque molho teste    tipo=Massas     preco=20,00

***Test Cases***
Novo prato
    Dado que "&{nhoque}" é um dos meus pratos
    Quando faço o cadastro desse item
    Então devo ver esse prato no meu dashboard 

