*** Settings ***

Resource    ../../base.robot

Library    XML

*** Variables ***
${TELA_INICIAL}                 xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout
${BARRA_MENU}                   xpath=//android.widget.LinearLayout[@resource-id="br.com.pztec.estoque:id/todoObjeto"]/android.widget.LinearLayout
${BUTTON_NEW}                   xpath=br.com.pztec.estoque:id/Button1
${TELA_CADASTRO}                xpath=/hierarchy/android.widget.FrameLayout/android.widget.LinearLayout
${ELEMENTO_PRODUCT}             xpath=//android.widget.LinearLayout[@resource-id="br.com.pztec.estoque:id/cabecObjeto"]/android.widget.LinearLayout
${TXT_CODIGO}                   xpath=br.com.pztec.estoque:id/txt_codigo
*** Keywords ***
Dado que o usuário está na tela inicial do aplicativo
    Wait Until Element Is Visible    ${TELA_INICIAL} 
    Element Should Be Visible    ${BARRA_MENU}
 Dado o usuário está na tela cadastro de produtos
    Wait Until Element Is Visible    ${BARRA_MENU} 
    Espera o elemento e faz o click    ${BUTTON_NEW}
    Element Should Be Visible    ${TELA_CADASTRO}
    Page Should Contain Element    ${ELEMENTO_PRODUCT}
Quando o usuario preencher os campos para cadastro
    Espera o elemento e faz o click    ${TXT_CODIGO}
Então o produto deve ser cadastrado com sucesso
