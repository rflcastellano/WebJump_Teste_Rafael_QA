Dado("que acesse a página inicial da Webjump") do
    @home.load
end
  
Quando("clicar nos botoes One, Two e Four") do
    @home.botao1.click
    @home.botao2.click
    @home.botao4.click
end
  
Então("os botoes não devem mais estar visiveis na tela") do
    aggregate_failures do
        expect(page).to have_no_css('button#btn_one')
        expect(page).to have_no_css('button#btn_two')
        expect(page).to have_no_css('button#btn_link')
    end
end

Quando("clicar nos botoes One, Two e Four dentro do Iframe") do
    @home.clicaBotoesIframe
end

Então("os botoes não devem mais estar visiveis no iframe") do

    within_frame(page.find('iframe[src="buttons.html"]')) do 
        expect(page).to have_no_css('button#btn_one')
        expect(page).to have_no_css('button#btn_two')
        expect(page).to have_no_css('button#btn_link')
    end

end

Quando("preencher o campo nome") do
    @home.primeiroNome.set Faker::Name.first_name
end
  
Quando("clicar no botao One") do
    @home.botao1.click
end
  
Quando("clicar na opcao tres") do
    @home.opcao3.click
end
  
Quando("selecionar a opcao dois no checkbox") do
    @home.comboBox.select("ExampleTwo")
end
  
Entao("a imagem do selenium deve estar visivel") do
    expect(page).to have_css('img.img-responsive-center-block[alt="selenium"]')
end