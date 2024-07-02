    class LoginPage < SitePrism::Page

        set_url 'uas/request-password-reset?trk=homepage-basic_forgot_password&original_referer=https%3A%2F%2Fwww.linkedin.com%2Fhome'
        element :btnLogin, :xpath, "/html/body/nav/div/a[2]"
        element :emailField, :id, "username"
        element :passowrdField, :id, "password"
        element :loginButton, :xpath, "//button[contains(text(),'Entrar')]"

        def userLogin(email, password)
            btnLogin.click
            emailField.set (email)
            passowrdField.set (password)
            loginButton.click
        end

    end