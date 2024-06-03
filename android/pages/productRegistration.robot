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
${ESTOQUE_QUANTIDADE}           id=br.com.pztec.estoque:id/txt_qtdentrada
${ESTOQUE_MOTIVO}               id=br.com.pztec.estoque:id/txt_motivo
${ESTOQUE_REFERENCIA}           id=br.com.pztec.estoque:id/txt_referencia
${BUTTON_SAVE_ESTOQUE}          xpath=//android.widget.Button[@resource-id="br.com.pztec.estoque:id/btn_salvar"]





*** Keywords ***
Dado que o usuário está na tela inicial do aplicativo
    Element Should Be Visible    ${TELA_INICIAL} 
    Wait Until Element Is Visible    ${BARRA_MENU}
    Element Should Be Visible    ${BUTTON_MENU}
    Element Should Be Visible    ${BUTTON_NEW}
Dado o usuário está na tela cadastro de produtos
    Espera o elemento e faz o click    ${BUTTON_NEW}
    Element Should Be Visible    ${TELA_CADASTRO}
    Page Should Contain Element    ${ELEMENTO_PRODUCT}

Quando o usuario preencher os campos para cadastro
    [Arguments]    ${codigo}    ${descricao}    ${unidade}    ${quantidade}    ${valor}    ${lote}
    #Espera o elemento e faz o click    ${BUTTON_NEW}
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


Cadastar varios produtos no App
    [Arguments]    ${codigo}    ${descricao}    ${unidade}    ${quantidade}    ${valor}    ${lote}
    
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

E que existe um produto com 10 unidades em estoque
    Quando o usuario preencher os campos para cadastro   001    Tora Maçaranduba    UN    10    100    1545
Quando acrescentar 5 unidades ao estoque do produto
    Wait Until Element Is Visible    ${PRODUTO_CADASTRADO}
    Espera o elemento e faz o click   ${BUTTON_ADICIONAR}
    Input Text    ${ESTOQUE_QUANTIDADE}     5
    Input Text    ${ESTOQUE_MOTIVO}         Entrada de estoque
    Input Text    ${ESTOQUE_REFERENCIA}     NF026-1
    Click Element    ${BUTTON_SAVE_ESTOQUE}

Então o estoque do produto deve ser 15 unidades
    Wait Until Element Is Visible    ${PRODUTO_CADASTRADO}
    Element Should Contain Text      ${ESTOQUE_QUANTIDADE}    15.0
    Element Should Contain Text         //android.widget.TextView[@text='${ESTOQUE_QUANTIDADE}']     15.0