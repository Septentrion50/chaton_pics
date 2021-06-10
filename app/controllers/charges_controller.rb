class ChargesController < ApplicationController
  before_action :authenticate_user!

  def new
  end
  
  def create
    # Before the rescue, at the beginning of the method
    @stripe_amount = total_charge(current_order)

    begin 

      customer = Stripe::Customer.create({
      email: params[:stripeEmail],
      source: params[:stripeToken]
      })
      charge = Stripe::Charge.create({
      customer: customer.id,
      amount: @stripe_amount,
      description: "Procéder à la commande",
      currency: 'eur'
      })

    rescue Stripe::CardError => e
      flash[:error] = e.message
      redirect_to new_charge_path
    end
    paid_order = Charge.new(user_id: current_user.id, order_id: current_order.id, stripe_id: customer.id)
    if paid_order.save
      session[:order_id] = nil 
      flash[:notice] = "Paiement effectué !"
      redirect_to root_path
    else
      puts paid_order.errors.messages
      flash.now[:notice] = "Un problème s'est produit"
      redirect_to root_path
    end
  end
end
