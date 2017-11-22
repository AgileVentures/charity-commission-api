class MainCharitiesController < ApplicationController
  before_action :set_main_charity, only: [:show, :edit, :update, :destroy]

  # GET /main_charities
  # GET /main_charities.json
  def index
    @main_charities = MainCharity.first(50)
  end

  # GET /main_charities/1
  # GET /main_charities/1.json
  def show
  end

  # GET /main_charities/new
  def new
    @main_charity = MainCharity.new
  end

  # GET /main_charities/1/edit
  def edit
  end

  # POST /main_charities
  # POST /main_charities.json
  def create
    @main_charity = MainCharity.new(main_charity_params)

    respond_to do |format|
      if @main_charity.save
        format.html { redirect_to @main_charity, notice: 'Main charity was successfully created.' }
        format.json { render :show, status: :created, location: @main_charity }
      else
        format.html { render :new }
        format.json { render json: @main_charity.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /main_charities/1
  # PATCH/PUT /main_charities/1.json
  def update
    respond_to do |format|
      if @main_charity.update(main_charity_params)
        format.html { redirect_to @main_charity, notice: 'Main charity was successfully updated.' }
        format.json { render :show, status: :ok, location: @main_charity }
      else
        format.html { render :edit }
        format.json { render json: @main_charity.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /main_charities/1
  # DELETE /main_charities/1.json
  def destroy
    @main_charity.destroy
    respond_to do |format|
      format.html { redirect_to main_charities_url, notice: 'Main charity was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_main_charity
      @main_charity = MainCharity.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def main_charity_params
      params.require(:main_charity).permit(:regno, :coyno, :trustees, :fyend, :welsh, :incomedate, :income, :grouptype, :email, :web)
    end
end
