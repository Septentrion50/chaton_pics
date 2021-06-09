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
    # After the rescue, if the payment succeeded
  end
end
