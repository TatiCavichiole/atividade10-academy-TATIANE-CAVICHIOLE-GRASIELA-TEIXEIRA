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
${TXT_DESCRICAO}                xpath=//android.widget.EditText[@resource-id="br.com.pztec.estoque:id/txt_descricao"]
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
    Dado o usuário está na tela cadastro de produtos
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
    Então o produto deve ser cadastrado com sucesso  ${dados_inseridos}
Então o produto deve ser cadastrado com sucesso
    [Arguments]    ${dados_inseridos}
    ${codigo}    Get Text    ${TXT_CODIGO}
    ${descricao}    Get Text    ${TXT_DESCRICAO}
    ${unidade}    Get Text    ${TXT_UNIDADE}
    ${quantidade}    Get Text    ${TXT_QUANTIDADE}
    ${valor}    Get Text    ${TXT_VAL_UNIT}
    ${lote}    Get Text    ${TXT_LOTE}
    Should Be Equal As Numbers    ${codigo}    ${dados_inseridos['codigo']}
    Should Be Equal As Strings    ${descricao}    ${dados_inseridos['descricao']}
    Should Be Equal As Strings    ${unidade}    ${dados_inseridos['unidade']}
    Should Be Equal As Strings    ${quantidade}    ${dados_inseridos['quantidade']}
    Should Be Equal As Strings    ${valor}    ${dados_inseridos['valor']}
    Should Be Equal As Strings    ${lote}    ${dados_inseridos['lote']}
    Wait Until Element Is Visible    ${TELA_PRODUTOS}
    Element Should Be Visible    ${ID_PRODUTOS}
    Verificar Campos Preenchidos    ${dados_inseridos}

Quando o usuario nao preencher os campos obrigatorios para cadastro
    [Arguments]    ${codigo}       ${unidade}        ${lote}
    Input Text    ${TXT_CODIGO}    ${codigo}
    Input Text    ${TXT_UNIDADE}    ${unidade}      
    Input Text    ${TXT_LOTE}    ${lote}    
    Click Element    ${BUTTON_SAVE}

Então deve aparecer mensagem informando o campo obrigatorio a ser preenchido
    Click Element    ${TXT_DESCRICAO}
    Element Should Contain Text    ${TXT_DESCRICAO}    Required field

