*** Settings ***

Resource    ../../base.robot

Library    XML

*** Variables ***
${TELA_INICIAL}                 xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout
${BARRA_MENU}                   xpath=//android.widget.TextView[@text="Product Registration"]
${BUTTON_NEW}                   id=br.com.pztec.estoque:id/Button1
${BUTTON_MENU}                  id=br.com.pztec.estoque:id/Button3
${TELA_CADASTRO}                xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout
${ELEMENTO_PRODUCT}             id=//android.widget.LinearLayout[@resource-id="br.com.pztec.estoque:id/cabecObjeto"]/android.widget.LinearLayout
${TXT_CODIGO}                   id=br.com.pztec.estoque:id/txt_codigo
${TXT_DESCRICAO}                id=br.com.pztec.estoque:id/txt_descricao
${TXT_UNIDADE}                  id=br.com.pztec.estoque:id/txt_unidade
${TXT_QUANTIDADE}               id=br.com.pztec.estoque:id/txt_quantidade
${TXT_VAL_UNIT}                 id=br.com.pztec.estoque:id/txt_valunit
${TXT_LOTE}                     id=br.com.pztec.estoque:id/txt_lote
${DATA_CADASTRO}                id=br.com.pztec.estoque:id/data
${BUTTON_SAVE}                  id=br.com.pztec.estoque:id/btn_gravar_assunto
${TELA_PRODUTOS}                id=br.com.pztec.estoque:id/todoObjeto
${ID_PRODUTOS}                  xpath=//android.widget.TextView[@text="ID"]
${TXT_ID_PRODUTOS}              id=br.com.pztec.estoque:id/txt_idprod




*** Keywords ***
Dado que o usuário está na tela inicial do aplicativo
    Element Should Be Visible    ${TELA_INICIAL} 
    Wait Until Element Is Visible    ${BARRA_MENU}
    Element Should Be Visible    ${BUTTON_MENU}
    Element Should Be Visible    ${BUTTON_NEW}
 Dado o usuário está na tela cadastro de produtos
    Wait Until Element Is Visible    ${BARRA_MENU} 
    Espera o elemento e faz o click    ${BUTTON_NEW}
    Element Should Be Visible    ${TELA_CADASTRO}
    Page Should Contain Element    ${ELEMENTO_PRODUCT}
Quando o usuario preencher os campos para cadastro
    [Arguments]    ${codigo}    ${descricao}    ${unidade}    ${quantidade}    ${valor}    ${lote}
    Input Text        ${TXT_CODIGO}      ${codigo}    
    Input Text        ${TXT_DESCRICAO}    ${descricao}
    Input Text        ${TXT_UNIDADE}   ${unidade}
    Input Text        ${TXT_QUANTIDADE}   ${quantidade}
    Input Text        ${TXT_VAL_UNIT}   ${valor}
    Input Text        ${TXT_LOTE}   ${lote}
    Element Should Be Visible    ${DATA_CADASTRO}
    Click Element     ${BUTTON_SAVE} 


Então o produto deve ser cadastrado com sucesso
    Page Should Contain Element    ${TELA_PRODUTOS}
    Element Should Be Visible    ${ID_PRODUTOS}
    Element Should Contain Text     ${TXT_CODIGO}    ${codigo}


