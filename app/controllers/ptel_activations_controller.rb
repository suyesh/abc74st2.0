class PtelActivationsController < ApplicationController
  before_action :set_ptel_activation, only: [:show, :edit, :update, :destroy]

  # GET /ptel_activations
  # GET /ptel_activations.json
  def index
    @ptel_activations = PtelActivation.all
  end

  # GET /ptel_activations/1
  # GET /ptel_activations/1.json
  def show
  end

  # GET /ptel_activations/new
  def new
    @ptel_activation = PtelActivation.new
  end

  # GET /ptel_activations/1/edit
  def edit
  end

  # POST /ptel_activations
  # POST /ptel_activations.json
  def create
    @ptel_activation = PtelActivation.new(ptel_activation_params)

    respond_to do |format|
      if @ptel_activation.save
        format.html { redirect_to @ptel_activation, notice: 'Ptel activation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ptel_activation }
      else
        format.html { render action: 'new' }
        format.json { render json: @ptel_activation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ptel_activations/1
  # PATCH/PUT /ptel_activations/1.json
  def update
    respond_to do |format|
      if @ptel_activation.update(ptel_activation_params)
        format.html { redirect_to @ptel_activation, notice: 'Ptel activation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ptel_activation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ptel_activations/1
  # DELETE /ptel_activations/1.json
  def destroy
    @ptel_activation.destroy
    respond_to do |format|
      format.html { redirect_to ptel_activations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ptel_activation
      @ptel_activation = PtelActivation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ptel_activation_params
      params.require(:ptel_activation).permit(:sim_number, :zip_code, :email, :first_name, :last_name, :contact_number, :fourty_plan, :fifty_plan, :real_paygo, :paygo_amount, :admin_id, :wallet_id)
    end
end
