class WalletsController < ApplicationController
  before_action :set_wallet, only: [:show, :edit, :update, :destroy]

  # GET /wallets
  # GET /wallets.json
  def index
    @wallets = Wallet.all
  end

  # GET /wallets/1
  # GET /wallets/1.json
  def show
  end

  # GET /wallets/new
  def new
    @wallet = Wallet.new
  end

  # GET /wallets/1/edit
  def edit
  end

  # POST /wallets
  # POST /wallets.json
  def create
    @wallet = Wallet.new(wallet_params)

    respond_to do |format|
      if @wallet.save
        format.html { redirect_to @wallet, notice: 'Wallet was successfully created.' }
        format.json { render action: 'show', status: :created, location: @wallet }
      else
        format.html { render action: 'new' }
        format.json { render json: @wallet.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /wallets/1
  # PATCH/PUT /wallets/1.json
  def update
    respond_to do |format|
      if @wallet.update(wallet_params)
        format.html { redirect_to @wallet, notice: 'Wallet was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @wallet.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /wallets/1
  # DELETE /wallets/1.json
  def destroy
    @wallet.destroy
    respond_to do |format|
      format.html { redirect_to wallets_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_wallet
      @wallet = Wallet.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def wallet_params
      params.require(:wallet).permit(:balance, :refunds, :income_from_activations, :income_from_reup, :income_from_international_recharge, :unlocking, :admin_id, :ptel_activation_id, :ptel_portin_id, :ptel_reup_id, :ultra_activation_id, :ultra_portin_id, :ultra_reup_id, :simple_activation_id, :simple_portin_id, :simple_reup_id, :lyca_activation_id, :lyca_portin_id, :lyca_reup_id, :h20_activation_id, :h20_portin_id, :h20_reup_id, :tmobile_activation_id, :tmobile_portin_id, :tmobile_reup_id, :unlocking_id)
    end
end
