Funcionalidade: Validar a funcionalidade de products
    Como usuário do aplicativo
    Desejo acessar as funcionalidades disponíveis
    Para realizar cadastros e consultas

Contexto: Acessar as funcionalidades do App
        Dado que o usuário está na tela inicial do aplicativo

Cenário: Cadastro de produto com sucesso
    Dado o usuário está na tela cadastro de produtos
    Quando o usuario preencher os campos para cadastro
    Então o produto deve ser cadastrado com sucesso

Cenário: Nao deve ser possivel cadastrar produto sem preencher os campos obrigatorios
    Dado o usuário está na tela cadastro de produtos
    Quando o usuario nao preencher os campos obrigatorios para cadastro
    Então deve aparecer mensagem informando o campo obrigatorio a ser preenchido
    E o produto nao deve ser cadastrado

Cenario: Acrescentar quantidade de produto ao estoque
    Dado o usuário está na tela cadastro de produtos
    E que existe um produto "Produto A" com 10 unidades em estoque
    Quando acrescentar 5 unidades ao estoque do produto "Produto A"
    Então o estoque do produto "Produto A" deve ser 15 unidades

Cenario: Decrementar quantidade de produto do estoque sem ficar negativo
    Dado o usuário está na tela cadastro de produtos
    E que existe um produto "Produto A" com 10 unidades em estoque
    Quando decrementar 5 unidades ao estoque do produto "Produto A"
    Então o estoque do produto "Produto A" deve ser 5 unidades

Cenario: Nao deve ser possivel que o estoque fique negativo
    Dado o usuário está na tela cadastro de produtos
    E que existe um produto "Produto A" com 3 unidades em estoque
    Quando decrementar 5 unidades ao estoque do produto "Produto A"
    Então a operação deve falhar
    E o estoque do produto "Produto A" deve permanecer 3 unidades

Cenario: Edição de informaçoes do Lot do produto
    Dado o usuário está na tela cadastro de produtos
    E que existe um produto "Produto A" com o Lot 1545
    Quando editar o Lote do produto para 1745
    Então o Lote do produto "Produto A" deve ser 1745

Cenario: Edição de informaçoes do Unit value do produto
    Dado o usuário está na tela cadastro de produtos
    E que existe um produto "Produto A" com o Unit value de 100.00
    Quando editar o Unit value do produto para 150.00
    Então o Unit value do produto "Produto A" deve ser 150.00

Cenario: Edição de informaçoes de description do produto
    Dado o usuário está na tela cadastro de produtos
    E que existe um produto "Produto A" com a description "Descrição antiga"
    Quando editar a description do produto para "Descrição nova"
    Então a description do produto "Produto A" deve ser "Descrição nova"

Cenario: Edição de informaçoes de Amount do produto
   Dado o usuário está na tela cadastro de produtos
    E que existe um produto "Produto A" com 10 Amount em estoque
    Quando editar a Amount do produto para 20
    Então a Amount do produto "Produto A" deve ser 20


Cenario: Edição de informaçoes de Code do produto
    Dado o usuário está na tela cadastro de produtos
    E que existe um produto "Produto A" com Code 001
    Quando editar o Code do produto para 002
    Então o Codigo do produto "Produto A" deve ser 002

Cenario: Excluir um produto cadastrado
    Dado o usuário está na tela cadastro de produtos
    E que existe um produto "Produto A" no sistema
    Quando excluir o produto "Produto A"
    Então o produto "Produto A" não deve estar mais presente no sistema

Cenario: Pesquisar produto cadastrado
    Dado o usuário está na tela cadastro de produtos
    Então deve estar visivel o campo de pesquisa




Funcionalidade: Validar a funcionalidade de backup/restore
    Como usuário do aplicativo
    Desejo fazer backup/restore
    Para guardar e consultar o as informaçoes futuramente

Cenario: Realizar um backup das informações do sistema
    Dado o usuário está na tela de backup
    Quando solicitar um backup das informações do sistema
    Então um arquivo de backup contendo todas as informações do sistema deve ser gerado
    E o usuario deve receber uma confirmação de concluído com sucesso

Cenario: Restaurar as informações do sistema a partir de um backup 
    Dado o usuário está na tela de backup
    E que o usuario tem um arquivo de backup válido
    Quando solicitar um restore das informações a partir do arquivo de backup
    Então todas as informações do sistema devem ser restauradas a partir do backup
    E o usuario deve receber uma confirmação de concluído com sucesso
    


Funcionalidade: Validar a funcionalidade de data export/import
    Como usuário do aplicativo
    Desejo acessar as funcionalidades disponíveis
    Para realizar exportação e importaçao de registros

    Cenario: Exportar registros de produtos para um arquivo .csv
    Dado o usuário está na tela de Data export
    E que o exitem vários registros de produtos
    Quando solicitar a exportação dos registros de produtos
    Entao um arquivo .csv contendo todos os registros de produtos deve ser gerado na pasta Estoque
    E o usuario deve receber uma confirmação de concluído com sucesso

    Cenario: Importar novos produtos a partir de um arquivo .csv
    Dado o usuário está na tela de Data import
    E que existe um arquivo .csv contendo novos produtos
    Quando importar o arquivo .csv para o sistema
    Entao todos os novos produtos no arquivo devem ser adicionados ao sistema
    E o usuario deve receber uma confirmação de concluído com sucesso


    Cenario: Verificar que os arquivos exportados são salvos na pasta Estoque
    Dado o usuário está na tela de Data import
    E que existe um arquivo .csv contendo novos produtos
    Quando importar o arquivo .csv para o sistema
    Entao todos os novos produtos no arquivo devem ser adicionados ao sistema
    E o usuario deve receber uma confirmação de concluído com sucesso

Funcionalidade: Validar a funcionalidade de report
    Como usuário do aplicativo
    Desejo acessar as funcionalidades disponíveis
    Para emitir relatorios e gerar consultas


    Cenario: Verificar o inventário de estoque, as entradas e saídas de produtos via report
    Dado que o usuário acessou a tela de menu do aplicativo
    Quando acessar a função report
    Então o sistema exibirá as 3 opções de report disponiveis

    Cenario: Verificar os filtros de entradas e saídas de produtos por um período de tempo com resultado exibido no formato pdf
    Dado que o usuário está na tela de report
    E acessou a opção de report desejada
    Quando selecionar a data inicial e final
    E selecionar a função visualizar pdf
    Então o arquivo de report será gerado em pdf com o filtro selecionado

    Cenario: Visualizar o documento e enviá-lo por e-mail
    Dado que o usuário está na tela de report
    E gerou o report desejado
    Quando acessar a função visualizar pdf
    Então o sistema exibirá o arquivo e a opção para enviar por e-mail estará disponível

    Cenario: Não deve ser possível emitir um report sem informar um período
    Dado que o usuário está na tela de report
    E acessou a opção de report desejada
    Quando não selecionar a data inicial e final
    E concluir a operação
    Então o sistema exibirá o alerta 



