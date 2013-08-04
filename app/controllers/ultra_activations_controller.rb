class UltraActivationsController < ApplicationController
  before_action :set_ultra_activation, only: [:show, :edit, :update, :destroy]

  # GET /ultra_activations
  # GET /ultra_activations.json
  def index
    @ultra_activations = UltraActivation.all
  end

  # GET /ultra_activations/1
  # GET /ultra_activations/1.json
  def show
  end

  # GET /ultra_activations/new
  def new
    @ultra_activation = UltraActivation.new
  end

  # GET /ultra_activations/1/edit
  def edit
  end

  # POST /ultra_activations
  # POST /ultra_activations.json
  def create
    @ultra_activation = UltraActivation.new(ultra_activation_params)

    respond_to do |format|
      if @ultra_activation.save
        format.html { redirect_to @ultra_activation, notice: 'Ultra activation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ultra_activation }
      else
        format.html { render action: 'new' }
        format.json { render json: @ultra_activation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ultra_activations/1
  # PATCH/PUT /ultra_activations/1.json
  def update
    respond_to do |format|
      if @ultra_activation.update(ultra_activation_params)
        format.html { redirect_to @ultra_activation, notice: 'Ultra activation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ultra_activation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ultra_activations/1
  # DELETE /ultra_activations/1.json
  def destroy
    @ultra_activation.destroy
    respond_to do |format|
      format.html { redirect_to ultra_activations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ultra_activation
      @ultra_activation = UltraActivation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ultra_activation_params
      params.require(:ultra_activation).permit(:sim_number, :zip_code, :ninteen_plan, :twentynine_plan, :tirtynine_plan, :fortynine_plan, :fiftynine_plan, :first_name, :last_name, :email, :admin_id, :wallet_id)
    end
end
