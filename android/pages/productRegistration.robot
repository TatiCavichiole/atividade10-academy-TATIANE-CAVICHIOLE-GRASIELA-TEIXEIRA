*** Settings ***

Resource    ../../base.robot

Library    XML

*** Variables ***
${TELA_INICIAL}                 xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout
${BARRA_MENU}                   xpath=//android.widget.LinearLayout[@resource-id="br.com.pztec.estoque:id/todoObjeto"]/android.widget.LinearLayout/android.widget.LinearLayout
${ELEMENTO_PRODUCT_REGIS}       xpath=//android.widget.TextView[@text="Product Registration"]
${BUTTON_NEW}                   id=br.com.pztec.estoque:id/Button1
${BUTTON_MENU}                  id=br.com.pztec.estoque:id/Button3
${TELA_CADASTRO}                xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout
${ELEMENTO_PRODUCT}             xpath=//android.widget.LinearLayout[@resource-id="br.com.pztec.estoque:id/cabecObjeto"]/android.widget.LinearLayout
${TXT_CODIGO}                   id=br.com.pztec.estoque:id/txt_codigo
${TXT_DESCRICAO}                id=br.com.pztec.estoque:id/txt_descricao
${TXT_UNIDADE}                  id=br.com.pztec.estoque:id/txt_unidade
${TXT_QUANTIDADE}               id=br.com.pztec.estoque:id/txt_quantidade
${TXT_VAL_UNIT}                 id=br.com.pztec.estoque:id/txt_valunit
${TXT_LOTE}                     id=br.com.pztec.estoque:id/txt_lote
${EXP_DATE}                     xpath=//android.widget.TextView[@text="Expiration date"]
${DATA_CADASTRO}                id=br.com.pztec.estoque:id/data
${BUTTON_SAVE}                  id=br.com.pztec.estoque:id/btn_gravar_assunto
${TELA_PRODUTOS}                id=br.com.pztec.estoque:id/todoObjeto
${ID_PRODUTOS}                  xpath=//android.widget.TextView[@text="ID"]
${TXT_ID_PRODUTOS}              id=br.com.pztec.estoque:id/txt_idprod
${DADOS_INCOMPLETOS}            xpath=//android.widget.ScrollView[@resource-id="br.com.pztec.estoque:id/scrollView1"]/android.widget.LinearLayout
${BUTTON_ADICIONAR}             id=br.com.pztec.estoque:id/entrada
${PRODUTO_CADASTRADO}           id=br.com.pztec.estoque:id/linha_parte1
${ESTOQUE_ENTRADA}              id=br.com.pztec.estoque:id/txt_qtdentrada
${ESTOQUE_MOTIVO}               id=br.com.pztec.estoque:id/txt_motivo
${ESTOQUE_REFERENCIA}           id=br.com.pztec.estoque:id/txt_referencia
${BUTTON_SAVE_ESTOQUE}          xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_salvar"]
${BUTTON_DECREMENTAR}           id=br.com.pztec.estoque:id/saida
${TELA_ALTERAR_ESTOQUE}         xpath=//android.widget.ScrollView[@resource-id="br.com.pztec.estoque:id/scrollView1"]/android.widget.LinearLayout
${ESTOQUE_SAIDA}                id=br.com.pztec.estoque:id/txt_qtdsaida
${MENSAGEM}                     id=android:id/message
${ESTOQUE_ALERTA}               id=android:id/alertTitle
${ESTOQUE_BTN_OK}               id=android:id/button1
${BUTTON_EDITAR}                id=br.com.pztec.estoque:id/editar
${BUTTON_DELETAR}               id=br.com.pztec.estoque:id/deletar
${TELA_PRODUTOS_VAZIA}          id=br.com.pztec.estoque:id/scrollView1
${PESQUISA}                     id=android:id/search_button
${BUTTON_BACKUP}                id=br.com.pztec.estoque:id/btn_backup
${BUTTON_GERAR_BACKUP}          id=br.com.pztec.estoque:id/btn_gerar
${BACKUP_MENSAGEM}              id=android:id/alertTitle
${BACKUP_ARQUIVO}               id=br.com.pztec.estoque:id/datafile
${BUTTON_RESTORE}               id=br.com.pztec.estoque:id/btn_restore
${BUTTON_RESTORE_SELEC}         id=br.com.pztec.estoque:id/btn_procurar
${RESTORE_ESTOQUE}              xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="Estoque"]
${RESTORE_LISTA_BACKUP}         xpath=/hierarchy/android.widget.FrameLayout
${BUTTON_IMPORT}                id=br.com.pztec.estoque:id/btn_importar
${OPCOES_IMPORT}                xpath=//android.widget.FrameLayout[@resource-id="android:id/content"]/android.widget.LinearLayout/android.widget.LinearLayout[2]
${BUTTON_PRODUCT_RESTORE}       id=br.com.pztec.estoque:id/btn_produtos
${BUTTON_ENTRADAS_RESTORE}      id=br.com.pztec.estoque:id/btn_entradas
${BUTTON_SAIDAS_RESTORE}        id=br.com.pztec.estoque:id/btn_saidas
${BUTTON_GROUP_RESTORE}         id=br.com.pztec.estoque:id/btn_grupos
${BUTTON_EXPORT}                id=br.com.pztec.estoque:id/btn_exportar
${BUTTON_GERAR_EXPORT}          id=br.com.pztec.estoque:id/btn_gerar
${MENSAGEM_OPCOMPLETA}          id=android:id/alertTitle
${DOC_CSV}                      xpath=//android.widget.TextView[@resource-id="android:id/text1" and @text="group.csv"]
${SELECIONAR_ARQUIVO}           xpath=//android.widget.TextView[@resource-id="android:id/alertTitle"]
${BUTTON_REPORT}                id=br.com.pztec.estoque:id/btn_relatorios
${TITULO_REPORT}                id=br.com.pztec.estoque:id/lbl_titulo
${INVENTARIO_REPORT}            id=br.com.pztec.estoque:id/inventario
${ENTRADA_REPORT}               id=br.com.pztec.estoque:id/relentrada
${SAIDA_REPORT}                 id=br.com.pztec.estoque:id/relsaida
${GERAR_REPORT_PDF}             id=br.com.pztec.estoque:id/btn_gerar
${ABRIR_REPORT_PDF}             id=br.com.pztec.estoque:id/btn_abrir
${DATA_INICIAL_REPORT}          id=br.com.pztec.estoque:id/data1
${DATA_FINAL_REPORT}            id=br.com.pztec.estoque:id/data2
${CALENDARIO_REPORT}            id=android:id/month_view
${DATA_INI}                     xpath=//android.view.View[@content-desc="01 June 2024"]
${DATA_FIN}                     xpath=//android.view.View[@content-desc="30 June 2024"]
${EXIBINDO_TELA_PDF}            id=com.google.android.apps.docs:id/projector_toolbar
${VIZUALIZA_PDF}                xpath=//android.view.ViewGroup[contains(@content-desc,"S")]
${LISTA_COMPARTILHAR_PDF}       id=android:id/resolver_list
${SETA_OPCOES_PDF}              xpath=//android.widget.ImageView[@content-desc="More options"]
${COMPARTILHAR_PDF}             xpath=//android.widget.TextView[@resource-id="com.google.android.apps.docs:id/title" and @text="Send file…"]
${DOWNLOAD_PDF}                 xpath=//android.widget.TextView[@resource-id="com.google.android.apps.docs:id/title" and @text="Download"]
${PRINT_PDF}                    xpath=//android.widget.TextView[@resource-id="com.google.android.apps.docs:id/title" and @text="Print"]
${FEEDBACK_PDF}                 xpath=//android.widget.TextView[@resource-id="com.google.android.apps.docs:id/title" and @text="Feedback to Google"]
${COMPARTILHAR_DRIVER}          xpath=(//android.widget.ImageView[@resource-id="android:id/icon"])[1]
${COMPARTILHAR_GMAIL}           xpath=(//android.widget.ImageView[@resource-id="android:id/icon"])[2]
${COMPARTILHAR_BLUET}           xpath=(//android.widget.ImageView[@resource-id="android:id/icon"])[3]
${COMPARTILHAR_MESAG}           xpath=(//android.widget.ImageView[@resource-id="android:id/icon"])[4]


*** Keywords ***
Dado que o usuário acessou a tela inicial do aplicativo
    Element Should Be Visible    ${TELA_INICIAL} 
    Wait Until Element Is Visible    ${BARRA_MENU}
    Element Should Be Visible    ${BUTTON_MENU}
    Element Should Be Visible    ${BUTTON_NEW}
E que acessou a tela cadastro de produtos
    Espera o elemento e faz o click    ${BUTTON_NEW}
    Element Should Be Visible    ${TELA_CADASTRO}
    Page Should Contain Element    ${ELEMENTO_PRODUCT}

Quando o usuario preencher os campos para cadastro
    [Arguments]    ${codigo}    ${descricao}    ${unidade}    ${quantidade}    ${valor}    ${lote}
    E que acessou a tela cadastro de produtos
    Wait Until Element Is Visible   ${TELA_INICIAL}
    Input Text    ${TXT_CODIGO}    ${codigo}
    Input Text    ${TXT_DESCRICAO}    ${descricao}
    Input Text    ${TXT_UNIDADE}    ${unidade}
    Input Text    ${TXT_QUANTIDADE}    ${quantidade}
    Input Text    ${TXT_VAL_UNIT}    ${valor}
    Input Text    ${TXT_LOTE}    ${lote}
    ${dados_inseridos} =    Create Dictionary    codigo=${codigo}    descricao=${descricao}    unidade=${unidade}    quantidade=${quantidade}    valor=${valor}    lote=${lote}
    [Return]    ${dados_inseridos}
    Element Should Be Visible    ${EXP_DATE}
    Click Element    ${BUTTON_SAVE}


Quando Cadastrar varios produtos no App
    [Arguments]    ${codigo}    ${descricao}    ${unidade}    ${quantidade}    ${valor}    ${lote}
    Sleep    1
    Quando o usuario preencher os campos para cadastro ${codigo}    ${descricao}    ${unidade}    ${quantidade}    ${valor}    ${lote}
    
Então o produto deve ser cadastrado com sucesso
    [Arguments]    ${dados_inseridos}
    Wait Until Element Is Visible     ${TELA_PRODUTOS}
    ${codigo}    Get Text    ${TXT_CODIGO}
    ${descricao}    Get Text    ${TXT_DESCRICAO}
    ${unidade}    Get Text    ${TXT_UNIDADE}
    ${quantidade}    Get Text    ${TXT_QUANTIDADE}
    ${valor}    Get Text    ${TXT_VAL_UNIT}
    ${lote}    Get Text    ${TXT_LOTE}
    Element Should Contain Text         //android.widget.TextView[@text='${codigo}']    ${codigo}
    Element Should Contain Text         //android.widget.TextView[@text='${descricao}']    ${descricao}
    Element Should Contain Text         //android.widget.TextView[@text='${unidade}']    ${unidade}
    Element Should Contain Text         //android.widget.TextView[@text='${quantidade}']    ${quantidade}
    Element Should Contain Text         //android.widget.TextView[@text='${valor}']    ${valor}
    Element Should Contain Text         //android.widget.TextView[@text='${lote}']    ${lote}
    Element Should Be Visible    ${ID_PRODUTOS}
    

Quando o usuario nao preencher os campos obrigatorios para cadastro
    [Arguments]    ${codigo}       ${unidade}        ${lote}
    Input Text    ${TXT_CODIGO}    ${codigo}
    Input Text    ${TXT_UNIDADE}    ${unidade}      
    Input Text    ${TXT_LOTE}    ${lote}    
    Click Element    ${BUTTON_SAVE}

Então o produto nao deve ser cadastrado
    Element Should Be Visible    ${TELA_CADASTRO}
    Element Should Be Visible    ${BUTTON_SAVE}

Dado que existe um produto com 10 unidades em estoque
    Dado que o usuário acessou a tela inicial do aplicativo
    E que acessou a tela cadastro de produtos
    Quando o usuario preencher os campos para cadastro   001    Tora Maçaranduba    UN    10    100    1545
Quando acrescentar 5 unidades ao estoque do produto
    Wait Until Element Is Visible    ${PRODUTO_CADASTRADO}
    Espera o elemento e faz o click   ${BUTTON_ADICIONAR}
    Wait Until Element Is Visible    ${TELA_ALTERAR_ESTOQUE}
    Input Text    ${ESTOQUE_ENTRADA}     5
    Input Text    ${ESTOQUE_MOTIVO}         Entrada de estoque
    Input Text    ${ESTOQUE_REFERENCIA}     NF026-1
    Click Element    ${BUTTON_SAVE_ESTOQUE}

Então o estoque do produto deve ser 15 unidades
    Wait Until Element Is Visible    ${PRODUTO_CADASTRADO}
    ${quantidade}    Get Text    ${TXT_QUANTIDADE}
    Element Should Contain Text         //android.widget.TextView[@text='${quantidade}']    ${quantidade}
    
Quando decrementar 5 unidades ao estoque do produto
    Wait Until Element Is Visible    ${PRODUTO_CADASTRADO}
    Espera o elemento e faz o click   ${BUTTON_DECREMENTAR}
    Wait Until Element Is Visible    ${TELA_ALTERAR_ESTOQUE}
    Input Text    ${ESTOQUE_SAIDA}     5
    Input Text    ${ESTOQUE_MOTIVO}         Saida de estoque
    Input Text    ${ESTOQUE_REFERENCIA}     NF016-2
    Click Element    ${BUTTON_SAVE_ESTOQUE}

Então o estoque do produto deve ser 5 unidades   
    Wait Until Element Is Visible    ${PRODUTO_CADASTRADO}
    ${quantidade}    Get Text    ${TXT_QUANTIDADE}
    Element Should Contain Text         //android.widget.TextView[@text='${quantidade}']    ${quantidade}

Quando decrementar 11 unidades ao estoque do produto
    Wait Until Element Is Visible    ${PRODUTO_CADASTRADO}
    Espera o elemento e faz o click   ${BUTTON_DECREMENTAR}
    Wait Until Element Is Visible    ${TELA_ALTERAR_ESTOQUE}
    Input Text    ${ESTOQUE_SAIDA}     11
    Input Text    ${ESTOQUE_MOTIVO}         Saida de estoque
    Input Text    ${ESTOQUE_REFERENCIA}     NF017-2
    Click Element    ${BUTTON_SAVE_ESTOQUE}

Então a operação deve falhar
    Wait Until Element Is Visible    ${ESTOQUE_ALERTA}
    Element Should Contain Text      ${MENSAGEM}    Insufficient stock
    Click Element    ${ESTOQUE_BTN_OK}
    Press Keycode    4
    Press Keycode    4
Então o estoque do produto deve ser 10 unidades
    Wait Until Element Is Visible    ${PRODUTO_CADASTRADO}
    ${quantidade}    Get Text    ${TXT_QUANTIDADE}
    Element Should Contain Text         //android.widget.TextView[@text='${quantidade}']    ${quantidade}

Dado que existe um produto cadastrado no estoque
    Dado que o usuário acessou a tela inicial do aplicativo
    E que acessou a tela cadastro de produtos
    Quando o usuario preencher os campos para cadastro   001    Tora Jatoba    UN    30    100    1545

Quando editar o Lote do produto para 1745
    Wait Until Element Is Visible    ${PRODUTO_CADASTRADO}
    Espera o elemento e faz o click   ${BUTTON_EDITAR}
    Clear Text   ${TXT_LOTE}
    Input Text    ${TXT_LOTE}     1745
    Click Element    ${BUTTON_SAVE}
    
Então o Lote do produto deve ser 1745
    Wait Until Element Is Visible    ${PRODUTO_CADASTRADO}
    ${lote}    Get Text    ${TXT_LOTE}
    Element Should Contain Text         //android.widget.TextView[@text='${lote}']    1745

Quando editar o Unit value do produto para 150.00
    Wait Until Element Is Visible    ${PRODUTO_CADASTRADO}
    Espera o elemento e faz o click   ${BUTTON_EDITAR}
    Clear Text   ${TXT_VAL_UNIT}
    Input Text    ${TXT_VAL_UNIT}     150
    Click Element    ${BUTTON_SAVE}

Então o Unit value do produto deve ser 150.00
    Wait Until Element Is Visible    ${PRODUTO_CADASTRADO}
    ${valunidade}    Get Text    ${TXT_VAL_UNIT}
    Element Should Contain Text         //android.widget.TextView[@text='${valunidade}']    150,00

Quando editar a description do produto para Jatoba Roxo
    Wait Until Element Is Visible    ${PRODUTO_CADASTRADO}
    Espera o elemento e faz o click   ${BUTTON_EDITAR}
    Clear Text   ${TXT_DESCRICAO}
    Input Text    ${TXT_DESCRICAO}     Jatoba Roxo
    Click Element    ${BUTTON_SAVE}
    
Então a description do produto deve ser Jatoba Roxo
    Wait Until Element Is Visible    ${PRODUTO_CADASTRADO}
    ${descricao}    Get Text    ${TXT_DESCRICAO}
    Element Should Contain Text         //android.widget.TextView[@text='${descricao}']    Jatoba Roxo

Quando editar a Amount do produto para 20
    Wait Until Element Is Visible    ${PRODUTO_CADASTRADO}
    Espera o elemento e faz o click   ${BUTTON_EDITAR}
    Clear Text   ${TXT_QUANTIDADE}
    Input Text    ${TXT_QUANTIDADE}     20
    Click Element    ${BUTTON_SAVE}
    
Então a Amount do produto deve ser 20
    Wait Until Element Is Visible    ${PRODUTO_CADASTRADO}
    ${quantidade}    Get Text    ${TXT_QUANTIDADE}
    Element Should Contain Text         //android.widget.TextView[@text='${quantidade}']    20

 Quando editar o Code do produto para 002
    Wait Until Element Is Visible    ${PRODUTO_CADASTRADO}
    Espera o elemento e faz o click   ${BUTTON_EDITAR}
    Clear Text   ${TXT_CODIGO}
    Input Text    ${TXT_CODIGO}     002
    Click Element    ${BUTTON_SAVE}
 
Então o Codigo do produto deve ser 002
    Wait Until Element Is Visible    ${PRODUTO_CADASTRADO}
    ${codigo}    Get Text    ${TXT_CODIGO}
    Element Should Contain Text         //android.widget.TextView[@text='${codigo}']    002

Quando excluir o produto
    Wait Until Element Is Visible    ${PRODUTO_CADASTRADO}
    Espera o elemento e faz o click   ${BUTTON_DELETAR}
    Element Should Contain Text      ${MENSAGEM}       Delete?
    Click Element    ${ESTOQUE_BTN_OK}

Então o produto não deve estar mais presente no sistema
    Page Should Not Contain Element  ${PRODUTO_CADASTRADO}
    
Então deve estar visivel o campo de pesquisa
    Wait Until Element Is Visible   ${PESQUISA}
    Verifica se contem o text no content-desc   ${PESQUISA}    Search

#Backup/Restore

E que o usuário está na tela de backup
    Wait Until Element Is Visible   ${BARRA_MENU}
    Click Element   ${BUTTON_MENU}
    Wait Until Element Is Visible   ${BUTTON_BACKUP}
    Click Element   ${BUTTON_BACKUP}
    Wait Until Element Is Visible    ${BUTTON_GERAR_BACKUP}
    Element Should Contain Text    ${BUTTON_GERAR_BACKUP}    GENERATE BACKUP FILE


Quando solicitar um backup das informações do sistema
    Wait Until Element Is Visible   ${BUTTON_GERAR_BACKUP}
    Click Element   ${BUTTON_GERAR_BACKUP}
Então o usuario deve receber uma confirmação de concluído com sucesso
    Wait Until Element Is Visible   ${BACKUP_MENSAGEM}
    Element Should Contain Text      ${BACKUP_MENSAGEM}     Operation completed!
    Click Element    ${ESTOQUE_BTN_OK}
E um arquivo de backup contendo todas as informações do sistema deve ser gerado
    Wait Until Element Is Visible   ${BACKUP_ARQUIVO}
    Page Should Contain Element    ${BACKUP_ARQUIVO}
  
E que o usuário está na tela de restore
    Wait Until Element Is Visible   ${BARRA_MENU}
    Click Element   ${BUTTON_MENU}
    Wait Until Element Is Visible   ${BUTTON_RESTORE}
    Click Element   ${BUTTON_RESTORE}
    Wait Until Element Is Visible    ${BUTTON_RESTORE_SELEC}
    Element Should Contain Text    ${BUTTON_RESTORE_SELEC}    SELECT FILE

Quando solicitar um restore das informações a partir do arquivo de backup
    Click Element   ${BUTTON_RESTORE_SELEC}
    Wait Until Element Is Visible   ${RESTORE_ESTOQUE}
    Element Should Contain Text      ${RESTORE_ESTOQUE}     Estoque
    Click Element    ${RESTORE_ESTOQUE}
    
    

Então deve exibir lista de arquivos para restaurar a partir do backup
    Wait Until Element Is Visible    ${RESTORE_LISTA_BACKUP}
    Page Should Contain Element   ${RESTORE_LISTA_BACKUP}

Dado que o usuário acessou a tela de menu do aplicativo
    Dado que o usuário acessou a tela inicial do aplicativo
    Wait Until Element Is Visible   ${BARRA_MENU}
    Click Element    ${BUTTON_MENU}

Quando o usuário acessar a tela de import
    Wait Until Element Is Visible   ${BUTTON_IMPORT}
    Click Element    ${BUTTON_IMPORT}

E visualizar as opções de importação do App
    Wait Until Element Is Visible   ${OPCOES_IMPORT}
    Element Should Be Visible    ${BUTTON_PRODUCT_RESTORE}
    Element Should Contain Text    ${BUTTON_PRODUCT_RESTORE}    PRODUCT RESTORE
    Element Should Be Visible    ${BUTTON_ENTRADAS_RESTORE}
    Element Should Contain Text    ${BUTTON_ENTRADAS_RESTORE}    STOCK ENTRIES RESTORE
    Element Should Be Visible    ${BUTTON_SAIDAS_RESTORE}
    Element Should Contain Text    ${BUTTON_SAIDAS_RESTORE}    STOCK OUTS RESTORE
    Element Should Be Visible    ${BUTTON_GROUP_RESTORE}
    Element Should Contain Text    ${BUTTON_GROUP_RESTORE}    PRODUCT GROUP

E que o usuário está na tela de export
    Wait Until Element Is Visible   ${BUTTON_EXPORT}
    Click Element    ${BUTTON_EXPORT}
Quando solicitar a exportação dos registros de produtos
    Wait Until Element Is Visible   ${BUTTON_GERAR_EXPORT}
    Click Element    ${BUTTON_GERAR_EXPORT}
Entao o usuario deve receber uma confirmação de concluído com sucesso
    Wait Until Element Is Visible   ${MENSAGEM_OPCOMPLETA}
    Element Should Contain Text      ${MENSAGEM_OPCOMPLETA}     Operation completed!
    Click Element    ${ESTOQUE_BTN_OK}
    Press Keycode    4
    Press Keycode    4

E selecionar a opção de restauração desejada
    Wait Until Element Is Visible   ${OPCOES_IMPORT}
    Click Element    ${BUTTON_PRODUCT_RESTORE}
    Wait Until Element Is Visible   ${RESTORE_LISTA_BACKUP}
    Click Element    ${RESTORE_ESTOQUE}
  

Entao deve exibir a lista de arquivos
    Wait Until Element Is Visible   ${SELECIONAR_ARQUIVO}
    Element Should Contain Text      ${SELECIONAR_ARQUIVO}     /storage/emulated/0/Estoque
    Element Should Be Visible    ${DOC_CSV}
    Click Element    ${DOC_CSV}

Dado que o usuário está na tela de report
   Dado que o usuário acessou a tela de menu do aplicativo
   Wait Until Element Is Visible    ${BUTTON_REPORT}
   Click Element    ${BUTTON_REPORT}
   Wait Until Element Is Visible    ${TITULO_REPORT}
   Element Should Be Visible    ${TITULO_REPORT}


Então o sistema exibirá as 3 opções de report disponiveis
    Wait Until Element Is Visible    ${TITULO_REPORT}
    Element Should Be Visible    ${INVENTARIO_REPORT}
    Element Should Contain Text      ${INVENTARIO_REPORT}     REPORT INVENTORY
    Element Should Be Visible    ${ENTRADA_REPORT}
    Element Should Contain Text      ${ENTRADA_REPORT}     STOCK ENTRIES
    Element Should Be Visible    ${SAIDA_REPORT}
    Element Should Contain Text      ${SAIDA_REPORT}     STOCK OUTS

E acessou a opção de report desejada
    Wait Until Element Is Visible    ${ENTRADA_REPORT}
    Click Element     ${ENTRADA_REPORT}
Quando selecionar a data inicial e final
    Wait Until Element Is Visible    ${DATA_INICIAL_REPORT}
    Click Element     ${DATA_INICIAL_REPORT}
    Wait Until Element Is Visible    ${CALENDARIO_REPORT}
    Click Element     ${DATA_INI}
    Click Element    ${ESTOQUE_BTN_OK}
    Wait Until Element Is Visible    ${DATA_FINAL_REPORT}
    Click Element     ${DATA_FINAL_REPORT}
    Wait Until Element Is Visible    ${CALENDARIO_REPORT}
    Click Element     ${DATA_FIN}
    Click Element    ${ESTOQUE_BTN_OK}
    Wait Until Element Is Visible    ${GERAR_REPORT_PDF}
    Click Element     ${GERAR_REPORT_PDF}
    Wait Until Element Is Visible   ${BACKUP_ARQUIVO}

E selecionar a função visualizar pdf
    Wait Until Element Is Visible    ${ABRIR_REPORT_PDF}
    Click Element    ${ABRIR_REPORT_PDF}
Então o arquivo de report será gerado em pdf com o filtro selecionado
    Wait Until Element Is Visible    ${EXIBINDO_TELA_PDF}
    Element Should Be Visible    ${VIZUALIZA_PDF}

Quando acessar a função visualizar pdf
    Wait Until Element Is Visible    ${ABRIR_REPORT_PDF}
    Click Element    ${ABRIR_REPORT_PDF}

Então o sistema exibirá o arquivo e a opçoes de compartilhamento estarao disponíveis
    Wait Until Element Is Visible    ${VIZUALIZA_PDF}
    Click Element    ${SETA_OPCOES_PDF}
    Wait Until Element Is Visible    ${COMPARTILHAR_PDF}
    Click Element    ${COMPARTILHAR_PDF}
    Wait Until Element Is Visible    ${LISTA_COMPARTILHAR_PDF}
    Element Should Be Visible    ${COMPARTILHAR_GMAIL}
    Element Should Be Visible    ${COMPARTILHAR_DRIVER}
    Element Should Be Visible    ${COMPARTILHAR_BLUET}
    Element Should Be Visible    ${COMPARTILHAR_MESAG}

Quando não selecionar a data inicial e final
    Wait Until Element Is Visible    ${DATA_INICIAL_REPORT}
    Wait Until Element Is Visible    ${DATA_FINAL_REPORT}
E concluir a operação
    Wait Until Element Is Visible    ${GERAR_REPORT_PDF}
    Click Element     ${GERAR_REPORT_PDF}

Então o sistema exibirá o alerta
    Wait Until Element Is Visible   ${MENSAGEM}
    Element Should Contain Text      ${MENSAGEM}    Please select a date range.
    Click Element    ${ESTOQUE_BTN_OK}

Então o sistema exibirá o arquivo e as funçoes disponíveis
    Wait Until Element Is Visible    ${VIZUALIZA_PDF}
    Click Element    ${SETA_OPCOES_PDF}
    Wait Until Element Is Visible    ${COMPARTILHAR_PDF}
    Element Should Be Visible    ${COMPARTILHAR_PDF}
    Element Should Be Visible    ${DOWNLOAD_PDF}
    Element Should Be Visible    ${PRINT_PDF}
    Element Should Be Visible    ${FEEDBACK_PDF}