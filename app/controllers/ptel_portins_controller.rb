class PtelPortinsController < ApplicationController
  before_action :set_ptel_portin, only: [:show, :edit, :update, :destroy]

  # GET /ptel_portins
  # GET /ptel_portins.json
  def index
    @ptel_portins = PtelPortin.all
  end

  # GET /ptel_portins/1
  # GET /ptel_portins/1.json
  def show
  end

  # GET /ptel_portins/new
  def new
    @ptel_portin = PtelPortin.new
  end

  # GET /ptel_portins/1/edit
  def edit
  end

  # POST /ptel_portins
  # POST /ptel_portins.json
  def create
    @ptel_portin = PtelPortin.new(ptel_portin_params)

    respond_to do |format|
      if @ptel_portin.save
        format.html { redirect_to @ptel_portin, notice: 'Ptel portin was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ptel_portin }
      else
        format.html { render action: 'new' }
        format.json { render json: @ptel_portin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ptel_portins/1
  # PATCH/PUT /ptel_portins/1.json
  def update
    respond_to do |format|
      if @ptel_portin.update(ptel_portin_params)
        format.html { redirect_to @ptel_portin, notice: 'Ptel portin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ptel_portin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ptel_portins/1
  # DELETE /ptel_portins/1.json
  def destroy
    @ptel_portin.destroy
    respond_to do |format|
      format.html { redirect_to ptel_portins_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ptel_portin
      @ptel_portin = PtelPortin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ptel_portin_params
      params.require(:ptel_portin).permit(:existing_number, :first_name, :last_name, :contact_number, :address, :city, :state, :zip_code, :email, :old_service_provider, :old_account_id, :old_account_password, :fourtyplan, :fiftyplan, :real_paygo, :paygo_amount, :comments, :wallet_id, :admin_id)
    end
end
