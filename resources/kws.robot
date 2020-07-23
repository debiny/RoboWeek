***Settings***
Documentation       Aqui teremos todas as palhavras chaves de automação dos comportamentos

***Keywords***

#Cadastro de clientes
Dado que acesso a página principal
    Go To   http://ninjachef-qaninja-io.umbler.net/ 

Quando submeto o email "${email}"
    Input Text      id:email    ${email}
    Click Element   css:button[type=submit]  

Então devo ser autenticado
    Wait Until Page Contains Element    class:dashboard
   
Então devo ver a mensagem "${expect_messsage}"
    Wait Until Element Contains     class:alert     ${expect_messsage}

#Cadastro de pratos
Dado que "${produto}" é um dos meus pratos
#disponibiliza a variavel para todos os steps
    Set Test Variable       ${produto}

Quando faço o cadastro desse item
    Wait Until Element Is Visible   class:btn-add   5
    Click Element   class:btn-add
    Input Text      id:name                 ${produto['nome']}
    Input Text      id:plate                ${produto['tipo']}
    Input Text      id:price                ${produto['preco']}
    Click Element   class:btn-cadastrar     

Então devo ver esse prato no meu dashboard
    Wait Until Element Contains     class:produto-list  ${produto} 