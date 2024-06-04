*** Settings ***
Resource            ../utils/config.robot

Test Setup             Abrir App
Test Teardown          Teardown

*** Variables ***
${arquivo}  

*** Test Cases ***

CT014 - Realizar um backup das informações do sistema
    Dado que o usuário acessou a tela inicial do aplicativo
    E que o usuário está na tela de backup
    Quando solicitar um backup das informações do sistema
    Então o usuario deve receber uma confirmação de concluído com sucesso 
    E um arquivo de backup contendo todas as informações do sistema deve ser gerado

CT015 - Restaurar as informações do sistema a partir de um backup 
    Dado que o usuário acessou a tela inicial do aplicativo
    E que o usuário está na tela de restore
    Quando solicitar um restore das informações a partir do arquivo de backup
    Então deve exibir lista de arquivos para restaurar a partir do backup
    
