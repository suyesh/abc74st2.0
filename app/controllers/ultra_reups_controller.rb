class UltraReupsController < ApplicationController
  before_action :set_ultra_reup, only: [:show, :edit, :update, :destroy]

  # GET /ultra_reups
  # GET /ultra_reups.json
  def index
    @ultra_reups = UltraReup.all
  end

  # GET /ultra_reups/1
  # GET /ultra_reups/1.json
  def show
  end

  # GET /ultra_reups/new
  def new
    @ultra_reup = UltraReup.new
  end

  # GET /ultra_reups/1/edit
  def edit
  end

  # POST /ultra_reups
  # POST /ultra_reups.json
  def create
    @ultra_reup = UltraReup.new(ultra_reup_params)

    respond_to do |format|
      if @ultra_reup.save
        format.html { redirect_to @ultra_reup, notice: 'Ultra reup was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ultra_reup }
      else
        format.html { render action: 'new' }
        format.json { render json: @ultra_reup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ultra_reups/1
  # PATCH/PUT /ultra_reups/1.json
  def update
    respond_to do |format|
      if @ultra_reup.update(ultra_reup_params)
        format.html { redirect_to @ultra_reup, notice: 'Ultra reup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ultra_reup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ultra_reups/1
  # DELETE /ultra_reups/1.json
  def destroy
    @ultra_reup.destroy
    respond_to do |format|
      format.html { redirect_to ultra_reups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ultra_reup
      @ultra_reup = UltraReup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ultra_reup_params
      params.require(:ultra_reup).permit(:phone_number, :nineteen_plan, :twentynine_plan, :thirtynine_plan, :fourtynine_plan, :fiftynine_plan, :other_amount, :amount, :admin_id, :wallet_id)
    end
end
