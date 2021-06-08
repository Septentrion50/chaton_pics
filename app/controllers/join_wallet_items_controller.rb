class JoinWalletItemsController < ApplicationController
  include CurrentWallet
  before_action :set_wallet, only: [:create]
  before_action :set_join_wallet_item, only: %i[ show edit update destroy ]

  # GET /join_wallet_items or /join_wallet_items.json
  def index
    @join_wallet_items = JoinWalletItem.all
  end

  # GET /join_wallet_items/1 or /join_wallet_items/1.json
  def show
  end

  # GET /join_wallet_items/new
  def new
    @join_wallet_item = JoinWalletItem.new
  end

  # GET /join_wallet_items/1/edit
  def edit
  end

  # POST /join_wallet_items or /join_wallet_items.json
  def create
    kitten = Kitten.find(params[:kitten_id])
    @join_wallet_item = @wallet.join_wallet_items.new(join_wallet_item_params)

    respond_to do |format|
      if @join_wallet_item.save
        format.html { redirect_to @join_wallet_item, notice: "Join wallet item was successfully created." }
        format.json { render :show, status: :created, location: @join_wallet_item }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @join_wallet_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /join_wallet_items/1 or /join_wallet_items/1.json
  def update
    respond_to do |format|
      if @join_wallet_item.update(join_wallet_item_params)
        format.html { redirect_to @join_wallet_item, notice: "Join wallet item was successfully updated." }
        format.json { render :show, status: :ok, location: @join_wallet_item }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @join_wallet_item.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /join_wallet_items/1 or /join_wallet_items/1.json
  def destroy
    @join_wallet_item.destroy
    respond_to do |format|
      format.html { redirect_to join_wallet_items_url, notice: "Join wallet item was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_join_wallet_item
      @join_wallet_item = JoinWalletItem.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def join_wallet_item_params
      params.permit(:wallet_id, :kitten_id, :quantity)
    end
end
