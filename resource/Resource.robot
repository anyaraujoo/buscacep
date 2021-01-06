*** Settings ***
Library   SeleniumLibrary


*** Variables ***

${BROWSER}      firefox
${URL}          https://buscacepinter.correios.com.br/app/endereco/index.php

*** keywords ***
Abrir navegador
    Open Browser    about:blank   ${BROWSER}

Fechar navegador
    Close Browser

###Passo a passo
Dado que eu estou na pagina de inicial do site
    Go To       https://buscacepinter.correios.com.br/app/endereco/index.php


E digito o CEP do endereco "69005040"
    Input Text    id=endereco     69005040

Quando a pagina for redirecionada
  click Element       id=btn_pesquisar

Entao o endereco deve ser exibido com sucesso 
  wait until Element is visible        xpath=/html/body/main/form/div[1]/div[2]/div/div[3]/table/tbody/tr/td[2]

E digito o nome do endereco que desejo pesquisar 
   Input Text    id=endereco    Lojas Bemol    

Quando a pagina de busca for redirecionada
   click Element       id=btn_pesquisar

Entao o endereco sera exibido com sucesso
  wait until Element is visible        css=html body main form div#painel_form_consulta.container div.ctn-tabela div#resultado.dados div table#resultado-DNEC.th-fixo.cards.mob tbody tr td a


   
