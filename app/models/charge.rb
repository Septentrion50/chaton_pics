class Charge < ApplicationRecord
  belongs_to :user

  after_create :order_confirm
  after_create :order_admin_notif

  private
  
  def order_confirm
    UserMailer.order_confirmation(self.user_id, self.order_id).deliver_now
  end

  def order_admin_notif
    AdminMailer.order_admin(self).deliver_now
  end


end
