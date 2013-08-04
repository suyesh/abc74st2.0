class SimplePortinsController < ApplicationController
  before_action :set_simple_portin, only: [:show, :edit, :update, :destroy]

  # GET /simple_portins
  # GET /simple_portins.json
  def index
    @simple_portins = SimplePortin.all
  end

  # GET /simple_portins/1
  # GET /simple_portins/1.json
  def show
  end

  # GET /simple_portins/new
  def new
    @simple_portin = SimplePortin.new
  end

  # GET /simple_portins/1/edit
  def edit
  end

  # POST /simple_portins
  # POST /simple_portins.json
  def create
    @simple_portin = SimplePortin.new(simple_portin_params)

    respond_to do |format|
      if @simple_portin.save
        format.html { redirect_to @simple_portin, notice: 'Simple portin was successfully created.' }
        format.json { render action: 'show', status: :created, location: @simple_portin }
      else
        format.html { render action: 'new' }
        format.json { render json: @simple_portin.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simple_portins/1
  # PATCH/PUT /simple_portins/1.json
  def update
    respond_to do |format|
      if @simple_portin.update(simple_portin_params)
        format.html { redirect_to @simple_portin, notice: 'Simple portin was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @simple_portin.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simple_portins/1
  # DELETE /simple_portins/1.json
  def destroy
    @simple_portin.destroy
    respond_to do |format|
      format.html { redirect_to simple_portins_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simple_portin
      @simple_portin = SimplePortin.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def simple_portin_params
      params.require(:simple_portin).permit(:sim_number, :existing_phone, :zip_code, :current_service_provider, :old_account_number, :old_account_password, :first_name, :last_name, :email, :address, :city, :state, :zip_code, :twentyfive_plan, :fourty_plan, :fifty_plan, :sixty_plan, :seventy_plan, :admin_id, :wallet_id)
    end
end
