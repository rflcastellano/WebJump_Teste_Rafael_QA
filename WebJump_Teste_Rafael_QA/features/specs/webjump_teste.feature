#encoding: utf-8
#language: pt

Funcionalidade: Validação da Página

@botoes
Cenário: Validar Ausência de botoes depois de clique
Dado que acesse a página inicial da Webjump
Quando clicar nos botoes One, Two e Four
Então os botoes não devem mais estar visiveis na tela

@iframe
Cenário: IFrame - Validar ausencia de botoes depois de clique 
Dado que acesse a página inicial da Webjump
Quando clicar nos botoes One, Two e Four dentro do Iframe
Então os botoes não devem mais estar visiveis no iframe

@preenchercampos
Cenário: Preencher campos
Dado que acesse a página inicial da Webjump
Quando preencher o campo nome
E clicar no botao One
E clicar na opcao tres
E selecionar a opcao dois no checkbox
Entao a imagem do selenium deve estar visivel

