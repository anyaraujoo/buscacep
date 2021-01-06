*** Settings ***
Library   SeleniumLibrary

*** Variables ***

${BROWSER}      firefox
${URL}          http://www.buscacep.correios.com.br/

*** keywords ***
Open navigator
    Open Browser    about:blank   ${BROWSER}

Close navigator
    Close Browser

###Passo a passo
Dado que eu estou na pagina home do site
    Go To       http://www.buscacep.correios.com.br/
    Title Should Be    Correios: encomendas, rastreamento, telegramas, cep, cartas, selos, agências e mais!

E o usuario clica em "Busca CEP"
    Click Element    xpath=/html/body/div[1]/div[3]/div[2]/div[1]/div/div[2]/div[2]/ul[1]/li[11]/a

E digita o CEP que deseja pesquisar
    Input Text    id=endereco     69005040

Quando o usuario buscar o CEP
    click Element       id=btn_pesquisar  

Entao o endereco sera exibido com sucesso
    wait until Element is visible       css=#mensagem-resultado > h4
   
E digita o nome que deseja pesquisar
   Input Text    id=endereco    Lojas Bemol

Quando o usuario buscar o nome
        click Element       id=btn_pesquisar  

Entao o endereco sera exibido com sucesso
    Click Element           xpath=//*[@id="resultado-DNEC"]/tbody/tr/td[1]/a       
    wait until Element is visible       css=#detalhes-cep-modal > section > header > h1
