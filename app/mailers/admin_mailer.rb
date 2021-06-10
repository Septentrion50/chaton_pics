class AdminMailer < ApplicationMailer
    def order_admin(order)
        admin_array = User.where(is_admin: true)
        admin_array.each do |admin|
            @admin = admin
            @order = order
            mail(to: @admin.email, subject: 'Récapitulatif de la commande') 
        end
    end
end
