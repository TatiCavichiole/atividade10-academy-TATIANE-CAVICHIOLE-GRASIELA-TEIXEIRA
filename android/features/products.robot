*** Settings ***
Resource            ../utils/config.robot

Test Setup             Abrir App
Test Teardown          Teardown


*** Test Cases ***

CT001 - Acessar as funcionalidades do App
    Dado que o usuário está na tela inicial do aplicativo

CT002 - Cadastro de produto com sucesso
    Dado o usuário está na tela cadastro de produtos
    Quando o usuario preencher os campos para cadastro    001    Tora Maçaranduba    UN    10    100    1545
    Então o produto deve ser cadastrado com sucesso

CT003 - Nao deve ser possivel cadastrar produto sem preencher os campos obrigatorios
    Dado o usuário está na tela cadastro de produtos
    Quando o usuario nao preencher os campos obrigatorios para cadastro
    Então deve aparecer mensagem informando o campo obrigatorio a ser preenchido
    E o produto nao deve ser cadastrado

CT004 - Acrescentar quantidade de produto ao estoque
    Dado o usuário está na tela cadastro de produtos
    E que existe um produto "Produto A" com 10 unidades em estoque
    Quando acrescentar 5 unidades ao estoque do produto "Produto A"
    Então o estoque do produto "Produto A" deve ser 15 unidades

CT005 - Decrementar quantidade de produto do estoque sem ficar negativo
    Dado o usuário está na tela cadastro de produtos
    E que existe um produto "Produto A" com 10 unidades em estoque
    Quando decrementar 5 unidades ao estoque do produto "Produto A"
    Então o estoque do produto "Produto A" deve ser 5 unidades

CT006 - Nao deve ser possivel que o estoque fique negativo
    Dado o usuário está na tela cadastro de produtos
    E que existe um produto "Produto A" com 3 unidades em estoque
    Quando decrementar 5 unidades ao estoque do produto "Produto A"
    Então a operação deve falhar
    E o estoque do produto "Produto A" deve permanecer 3 unidades

CT007 - Edição de informaçoes do Lot do produto
    Dado o usuário está na tela cadastro de produtos
    E que existe um produto "Produto A" com o Lot 1545
    Quando editar o Lote do produto para 1745
    Então o Lote do produto "Produto A" deve ser 1745

CT008 - Edição de informaçoes do Unit value do produto
    Dado o usuário está na tela cadastro de produtos
    E que existe um produto "Produto A" com o Unit value de 100.00
    Quando editar o Unit value do produto para 150.00
    Então o Unit value do produto "Produto A" deve ser 150.00

CT009 - Edição de informaçoes de description do produto
    Dado o usuário está na tela cadastro de produtos
    E que existe um produto "Produto A" com a description "Descrição antiga"
    Quando editar a description do produto para "Descrição nova"
    Então a description do produto "Produto A" deve ser "Descrição nova"

CT010 - Edição de informaçoes de Amount do produto
   Dado o usuário está na tela cadastro de produtos
    E que existe um produto "Produto A" com 10 Amount em estoque
    Quando editar a Amount do produto para 20
    Então a Amount do produto "Produto A" deve ser 20


CT011 - Edição de informaçoes de Code do produto
    Dado o usuário está na tela cadastro de produtos
    E que existe um produto "Produto A" com Code 001
    Quando editar o Code do produto para 002
    Então o Codigo do produto "Produto A" deve ser 002

CT012 - Excluir um produto cadastrado
    Dado o usuário está na tela cadastro de produtos
    E que existe um produto "Produto A" no sistema
    Quando excluir o produto "Produto A"
    Então o produto "Produto A" não deve estar mais presente no sistema

CT013 - Pesquisar produto cadastrado
    Dado o usuário está na tela cadastro de produtos
    Então deve estar visivel o campo de pesquisa
