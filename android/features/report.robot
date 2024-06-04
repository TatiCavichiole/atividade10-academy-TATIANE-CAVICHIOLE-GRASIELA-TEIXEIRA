*** Settings ***
Resource            ../utils/config.robot

Test Setup             Abrir App
Test Teardown          Teardown


*** Test Cases ***
CT018 - Verificar o inventário de estoque, as entradas e saídas de produtos via report
    Dado que o usuário está na tela de report
    Então o sistema exibirá as 3 opções de report disponiveis

CT019 - Verificar os filtros de entradas e saídas de produtos por um período de tempo com resultado exibido no formato pdf
    Dado que o usuário está na tela de report
    E acessou a opção de report desejada
    Quando selecionar a data inicial e final
    E selecionar a função visualizar pdf
    Então o arquivo de report será gerado em pdf com o filtro selecionado

CT020 - Visualizar o documento e verificar opçoes de compartilhamento
    Dado que o usuário está na tela de report
    E acessou a opção de report desejada
    Quando acessar a função visualizar pdf
    Então o sistema exibirá o arquivo e a opçoes de compartilhamento estarao disponíveis

CT021 - Não deve ser possível emitir um report sem informar um período
    Dado que o usuário está na tela de report
    E acessou a opção de report desejada
    Quando não selecionar a data inicial e final
    E concluir a operação
    Então o sistema exibirá o alerta 

CT022 - Deve ser possível executar as funçoes, compartilhar, Download, Print, Feedback do pdf
    Dado que o usuário está na tela de report
    E acessou a opção de report desejada
    Quando acessar a função visualizar pdf
    Então o sistema exibirá o arquivo e as funçoes disponíveis

