class ReupsController < ApplicationController
  before_action :set_reup, only: [:show, :edit, :update, :destroy]
#this belongs to simple reup
  # GET /reups
  # GET /reups.json
  def index
    @reups = Reup.all
  end

  # GET /reups/1
  # GET /reups/1.json
  def show
  end

  # GET /reups/new
  def new
    @reup = Reup.new
  end

  # GET /reups/1/edit
  def edit
  end

  # POST /reups
  # POST /reups.json
  def create
    @reup = Reup.new(reup_params)

    respond_to do |format|
      if @reup.save
        format.html { redirect_to @reup, notice: 'Reup was successfully created.' }
        format.json { render action: 'show', status: :created, location: @reup }
      else
        format.html { render action: 'new' }
        format.json { render json: @reup.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /reups/1
  # PATCH/PUT /reups/1.json
  def update
    respond_to do |format|
      if @reup.update(reup_params)
        format.html { redirect_to @reup, notice: 'Reup was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @reup.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /reups/1
  # DELETE /reups/1.json
  def destroy
    @reup.destroy
    respond_to do |format|
      format.html { redirect_to reups_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_reup
      @reup = Reup.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def reup_params
      params.require(:reup).permit(:phone_number, :twentyfive_plan, :fourty_plan, :fifty_plan, :sixty_plan, :seventy_plan, :change_plan, :admin_id, :wallet_id)
    end
end
