class SimpleActivationsController < ApplicationController
  before_action :set_simple_activation, only: [:show, :edit, :update, :destroy]

  # GET /simple_activations
  # GET /simple_activations.json
  def index
    @simple_activations = SimpleActivation.all
  end

  # GET /simple_activations/1
  # GET /simple_activations/1.json
  def show
  end

  # GET /simple_activations/new
  def new
    @simple_activation = SimpleActivation.new
  end

  # GET /simple_activations/1/edit
  def edit
  end

  # POST /simple_activations
  # POST /simple_activations.json
  def create
    @simple_activation = SimpleActivation.new(simple_activation_params)

    respond_to do |format|
      if @simple_activation.save
        format.html { redirect_to @simple_activation, notice: 'Simple activation was successfully created.' }
        format.json { render action: 'show', status: :created, location: @simple_activation }
      else
        format.html { render action: 'new' }
        format.json { render json: @simple_activation.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /simple_activations/1
  # PATCH/PUT /simple_activations/1.json
  def update
    respond_to do |format|
      if @simple_activation.update(simple_activation_params)
        format.html { redirect_to @simple_activation, notice: 'Simple activation was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @simple_activation.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /simple_activations/1
  # DELETE /simple_activations/1.json
  def destroy
    @simple_activation.destroy
    respond_to do |format|
      format.html { redirect_to simple_activations_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_simple_activation
      @simple_activation = SimpleActivation.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def simple_activation_params
      params.require(:simple_activation).permit(:sim_number, :zip_code, :twentyfive_plan, :fourty_plan, :fifty_plan, :sixty_plan, :ild, :admin_id, :wallet_id)
    end
end
