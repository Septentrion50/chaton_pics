class Charge < ApplicationRecord
  belongs_to :user

  after_create :order_confirm

  private
  
  def order_confirm
    UserMailer.order_confirmation(self.user_id, self.order_id).deliver_now
  end


end
