class UserMailer < ApplicationMailer
    default from: 'bernard.bianca@yopmail.com'
    
    def welcome_email(user)
        @user = user 
        @url  = 'https://chaton-pics-developement.herokuapp.com'
        mail(to: @user.email, subject: 'Bienvenue sur Kitten World, le monde merveilleux des chatons !') 
    end

    # def order_email(user, order, charge)
    #     @user = user
    #     @order = order
    #     @charge = charge
    #     mail(to: @user.email, subject: 'Voici le récapitulatif de ta commande') 
    # end
end
