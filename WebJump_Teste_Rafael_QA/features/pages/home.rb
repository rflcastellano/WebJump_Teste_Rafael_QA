require 'rspec'

class Home < SitePrism::Page

    set_url 'https://webjump-user.github.io/testqa/'
    element :botao1, 'button#btn_one'
    element :botao2, 'button#btn_two'
    element :botao3, 'button#btn_three'
    element :botao4, 'button#btn_link'
    element :primeiroNome, 'input#first_name'
    element :opcao3, '#opt_three'
    element :comboBox, 'select#select_box'
    element :imagemSelenium, 'img.img-responsive-center-block[alt="selenium"]'

    class IframePage < SitePrism::Page
        element :botao1, 'button#btn_one'
        element :botao2, 'button#btn_two'
        element :botao3, 'button#btn_three'
        element :botao4, 'button#btn_link'
    end

    iframe :botoesIframe, IframePage, 'iframe[src="buttons.html"]'

    def clicaBotoesIframe 
        botoesIframe do |frame|
        frame.botao1.click
        frame.botao2.click
        frame.botao4.click
        end
    end

    def validaIframe
        botoesIframe do |frame|
            expect(frame).to have_no_css('button#btn_one')
            expect(frame).to have_no_css('button#btn_two')
            expect(frame).to have_no_css('button#btn_link')
        end
    end

end
