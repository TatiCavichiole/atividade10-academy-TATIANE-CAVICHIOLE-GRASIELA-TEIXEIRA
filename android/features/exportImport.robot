*** Settings ***
Resource            ../utils/config.robot

Test Setup             Abrir App
Test Teardown          Teardown


*** Test Cases ***


CT016 - Exportar registros de produtos para um arquivo .csv
    Dado que o usuário acessou a tela de menu do aplicativo
    E que o usuário está na tela de export
    Quando solicitar a exportação dos registros de produtos
    Entao o usuario deve receber uma confirmação de concluído com sucesso
   
    
CT017 - Importar novos produtos a partir de um arquivo .csv
    Dado que o usuário acessou a tela de menu do aplicativo
    Quando o usuário acessar a tela de import
    E visualizar as opções de importação do App
    E selecionar a opção de restauração desejada
    Entao deve exibir a lista de arquivos

 
