class UserMailer < ApplicationMailer
    default from: 'bernard.bianca@yopmail.com'
    
    def welcome_email(user)
        @user = user 
        @url  = 'https://chaton-pics-developement.herokuapp.com'
        mail(to: @user.email, subject: 'Bienvenue sur Kitten World, le monde merveilleux des chatons !') 
    end

    def order_confirmation(user, order)
        @user  = User.find(user)
        @order = Order.find(order)
        @url   = 'https://chaton-pics-developement.herokuapp.com'
        mail(to: @user.email, subject: 'Ta commande a été reçue')
    end
    
end
