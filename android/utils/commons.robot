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
  