class HomePage < SitePrism::Page

    element :nomeUsuario, :xpath, "/html/body/div[5]/div[3]/div/div/div[2]/div/div/div/div/div[1]/div[1]/a/div[2]"
    element :homeIcon, :xpath, "/html/body/div[5]/header/div/nav/ul/li[1]/a"
    element :minhaRede, :xpath, "/html/body/div[5]/header/div/nav/ul/li[2]/a"
    
    def checkLoginSuccessful
        expect(nomeUsuario.text).to eql "teste automaçãoi"
        expect(homeIcon.text).to eql "Início"
        expect(minhaRede.text).to eql "Minha rede"
    end

end