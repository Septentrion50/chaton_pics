module CurrentWallet
  private

  def set_wallet
    @wallet = Wallet.find_by(id:session[:wallet_id]) || Wallet.create
    session[:wallet_id] ||= @wallet.id
  end
end
