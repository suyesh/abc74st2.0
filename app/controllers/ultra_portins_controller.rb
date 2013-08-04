class UltraPortinsController < ApplicationController
  before_action :set_ultra_portin, only: [:show, :edit, :update, :destroy]

  # GET /ultra_portins
  # GET /ultra_portins.json
  def index
    @ultra_portins = UltraPortin.all
  end

  # GET /ultra_portins/1
  # GET /ultra_portins/1.json
  def show
  end

  # GET /ultra_portins/new
  def new
    @ultra_portin = UltraPortin.new
  end

  # GET /ultra_portins/1/edit
  def edit
  end

  # POST /ultra_portins
  # POST /ultra_portins.json
  def create
    @ultra_portin = UltraPortin.new(ultra_portin_params)

    respond_to do |format|
      if @ultra_portin.save
        format.html { redirect_to @ultra_portin, notice: 'Ultra portin was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ultra_portin }
      else
        format.html { render action: 'new' }
        format.json { render json: @ultra_portin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ultra_portins/1
  # PATCH/PUT /ultra_portins/1.json
  def update
    respond_to do |format|
      if @ultra_portin.update(ultra_portin_params)
        format.html { redirect_to @ultra_portin, notice: 'Ultra portin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ultra_portin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ultra_portins/1
  # DELETE /ultra_portins/1.json
  def destroy
    @ultra_portin.destroy
    respond_to do |format|
      format.html { redirect_to ultra_portins_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ultra_portin
      @ultra_portin = UltraPortin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ultra_portin_params
      params.require(:ultra_portin).permit(:sim_number, :zip_code, :ninteen_plan, :twentynine_plan, :tirtynine_plan, :fortynine_plan, :fiftynine_plan, :first_name, :last_name, :email, :old_number, :account_no, :zip_code, :old_password, :admin_id, :wallet_id)
    end
end
