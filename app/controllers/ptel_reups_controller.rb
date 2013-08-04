class PtelReupsController < ApplicationController
  before_action :set_ptel_reup, only: [:show, :edit, :update, :destroy]

  # GET /ptel_reups
  # GET /ptel_reups.json
  def index
    @ptel_reups = PtelReup.all
  end

  # GET /ptel_reups/1
  # GET /ptel_reups/1.json
  def show
  end

  # GET /ptel_reups/new
  def new
    @ptel_reup = PtelReup.new
  end

  # GET /ptel_reups/1/edit
  def edit
  end

  # POST /ptel_reups
  # POST /ptel_reups.json
  def create
    @ptel_reup = PtelReup.new(ptel_reup_params)

    respond_to do |format|
      if @ptel_reup.save
        format.html { redirect_to @ptel_reup, notice: 'Ptel reup was successfully created.' }
        format.json { render action: 'show', status: :created, location: @ptel_reup }
      else
        format.html { render action: 'new' }
        format.json { render json: @ptel_reup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ptel_reups/1
  # PATCH/PUT /ptel_reups/1.json
  def update
    respond_to do |format|
      if @ptel_reup.update(ptel_reup_params)
        format.html { redirect_to @ptel_reup, notice: 'Ptel reup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @ptel_reup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ptel_reups/1
  # DELETE /ptel_reups/1.json
  def destroy
    @ptel_reup.destroy
    respond_to do |format|
      format.html { redirect_to ptel_reups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ptel_reup
      @ptel_reup = PtelReup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ptel_reup_params
      params.require(:ptel_reup).permit(:pone_number, :fourty_plan, :fifty_plan, :real_paygo, :paygo_amount, :admin_id, :wallet_id)
    end
end
