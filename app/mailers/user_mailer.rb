class UserMailer < ApplicationMailer
    default from: 'cedrickittenworld@yopmail.com'
    
    def welcome_email(user)
        @user = user 
        @url  = 'https://chaton-pics.herokuapp.com'
        mail(to: @user.email, subject: 'Bienvenue sur Kitten World, le monde merveilleux des chatons !') 
    end

    def order_confirmation(user, order)
        @user  = User.find(user)
        @order = Order.find(order)
        @url   = 'https://chaton-pics.herokuapp.com'
        line_items = @order.line_items
        kittens = []
        line_items.each do |kit|
            kittens << kit.kitten.picture
        end
        kittens.each_with_index do |img, i|
            attachments["img_#{i}"] = img.blob.download
        end
        mail(to: @user.email, subject: 'Ta commande a été reçue')
    end
    
end
