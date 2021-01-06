*** Settings ***

Resource          ../resource/Resource.robot
Test Setup        Abrir navegador
Test Teardown     Fechar navegador

*** Test Case ***
 
 
Cenario 01: Realizar busca de endereco por CEP     
      Dado que eu estou na pagina de inicial do site                                                                                                                                                                                                         
      E digito o CEP do endereco "69005040"  
      Quando a pagina for redirecionada 
      Entao o endereco deve ser exibido com sucesso 
      

Cenario 02: Realizar busca de endereco por Nome 
      Dado que eu estou na pagina de inicial do site                                                                                                                                                                                                          
      E digito o nome do endereco que desejo pesquisar
      Quando a pagina de busca for redirecionada
      Entao o endereco sera exibido com sucesso   