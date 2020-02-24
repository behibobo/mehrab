class LandsController < ApplicationController
  before_action :set_land, only: [:show, :edit, :update, :destroy]

  # GET /lands
  # GET /lands.json
  def index
    @customer = Customer.find(params[:customer_id])
    @lands = @customer.lands
  end

  # GET /lands/1
  # GET /lands/1.json
  def show
    @customer = Customer.find(params[:customer_id])
  end

  # GET /lands/new
  def new
    @land = Land.new
    @customer = Customer.find(params[:customer_id])
  end

  # GET /lands/1/edit
  def edit
    @customer = Customer.find(params[:customer_id])
  end

  # POST /lands
  # POST /lands.json
  def create
    @land = Land.new(land_params)
    @customer = Customer.find(params[:customer_id])
    @land.customer_id = @customer.id
    respond_to do |format|
      if @land.save
        format.html { redirect_to customer_lands_path(@customer,@land), notice: 'Land was successfully created.' }
        format.json { render :show, status: :created, location: @land }
      else
        format.html { render :new }
        format.json { render json: @land.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /lands/1
  # PATCH/PUT /lands/1.json
  def update
    @customer = Customer.find(params[:customer_id])
    respond_to do |format|
      if @land.update(land_params)
        format.html { redirect_to customer_lands_path(@customer,@land), notice: 'Land was successfully updated.' }
        format.json { render :show, status: :ok, location: @land }
      else
        format.html { render :edit }
        format.json { render json: @land.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /lands/1
  # DELETE /lands/1.json
  def destroy
    @customer = Customer.find(params[:customer_id])
    @land.destroy
    respond_to do |format|
      format.html { redirect_to customer_lands_path(@customer,@land), notice: 'Land was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_land
      @land = Land.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def land_params
      params.require(:land).permit(:land_type, :area, :customer_id)
    end
end
