*** Settings ***

Resource        ../../base.robot

*** Keywords ***

Espera o elemento e faz o click
    [Arguments]     ${elemento}
    Wait Until Element Is Visible    ${elemento}
    Click Element                    ${elemento}

Verifica se contem o text no content-desc
    [Arguments]    ${elemento}    ${text}
    ${contentDesc}=    AppiumLibrary.Get Element Attribute    ${elemento}    content-desc
    Should Contain    ${contentDesc}    ${text}

Verifica se não contem o text no content-desc
    [Arguments]    ${elemento}    ${text}
    ${contentDesc}=    AppiumLibrary.Get Element Attribute    ${elemento}    content-desc
    Should Not Contain    ${contentDesc}    ${text}



Verificar Campos Preenchidos
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