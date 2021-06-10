class UserMailer < ApplicationMailer
    default from: 'bernard.bianca@yopmail.com'
    
    def welcome_email(user)
        @user = user 
        @url  = 'https://chaton-pics.herokuapp.com'
        mail(to: @user.email, subject: 'Bienvenue sur Kitten World, le monde merveilleux des chatons !') 
    end

    def order_confirmation(user, order)
        @user  = User.find(user)
        @order = Order.find(order)
        @url   = 'https://chaton-pics.herokuapp.com'
        # @images = []
        # attachments = @order.line_items
        # attachments.each do |kit|
        #     @images << Rails.application.routes.url_helpers.rails_blob_url(kit.kitten.picture)
        # end
        mail(to: @user.email, subject: 'Ta commande a été reçue')
    end
    
end
