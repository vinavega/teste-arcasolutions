*** Settings ***
Library  SeleniumLibrary
Library  FakerLibrary  locale=pt_BR
Suite Setup  Inicializa sistema

*** Variables ***
${URL}  https://demodirectory.com/profile/login.php
${BROWSER}  chrome

*** Test Cases ***
Cenário: Cadastrar um novo usuário
    Acessar o link de registro de novo usuário
    Preencher os campos
    Clicar em Registrar
    Verificar página de perfil
    
*** Keywords ***
Inicializa sistema
    Abrir Navegador
    Acessar site

Abrir Navegador
    Open Browser  about:blank  ${BROWSER}
    Maximize Browser Window  
Acessar site
    Go To  ${URL}
    Wait Until Page Contains Element  xpath=(//a[contains(.,'Home')])[1]
    Wait Until Page Contains Element  xpath=//div[@class='heading footer-item-title'][contains(.,'Contact Us')]
Acessar o link de registro de novo usuário
    Wait Until Page Contains Element  xpath=//a[contains(.,'Not a member? Register now')]
    Click Element                     xpath=//a[contains(.,'Not a member? Register now')]

Preencher os campos
    Wait Until Page Contains Element  xpath=//input[@placeholder='First Name']
    ${FIRSTNAME}=  FakerLibrary.First Name
    Input Text                        xpath=//input[@placeholder='First Name']  ${FIRSTNAME}
    ${LASTNAME}=  FakerLibrary.Last Name
    Input Text                        id=last_name  ${LASTNAME}
    ${EMAIL}=  FakerLibrary.email
    Input Text                        id=username  ${EMAIL}
    ${PASSWD}=  FakerLibrary.password
    Input Password                    id=password  ${PASSWD}
    Click Element                     name=newsletter

Clicar em Registrar
    Sleep  10s
    Click Element                     xpath=//button[@value='Submit']

Verificar página de perfil
    Wait Until Page Contains Element  //h2[@class='heading h-2'][contains(.,'Profile')]
    Wait Until Page Contains Element  //div[@class='panel-header header-spaced'][contains(.,'About Me Edit my Profile')]
    Wait Until Page Contains Element  //div[@class='panel-header'][contains(.,'Recent Activity')]