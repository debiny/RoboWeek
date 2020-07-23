***Settings***
Documentation       Aqui teremos a estrutura base do projeto, o selenium é importado aqui 

Library     SeleniumLibrary

Resource    kws.robot
Resource    helpers.robot

***Keywords***

    ## Hooks
    
    #Abre o navegador com uma aba em branco
Open Session       
    Open Browser    about:blank     chrome     

Close Session    
    Close Browser 