class CharityTrusteesController < ApplicationController
  before_action :set_charity_trustee, only: [:show, :edit, :update, :destroy]

  # GET /charity_trustees
  # GET /charity_trustees.json
  def index
    @charity_trustees = CharityTrustee.first(50)
  end

  # GET /charity_trustees/1
  # GET /charity_trustees/1.json
  def show
  end

  # GET /charity_trustees/new
  def new
    @charity_trustee = CharityTrustee.new
  end

  # GET /charity_trustees/1/edit
  def edit
  end

  # POST /charity_trustees
  # POST /charity_trustees.json
  def create
    @charity_trustee = CharityTrustee.new(charity_trustee_params)

    respond_to do |format|
      if @charity_trustee.save
        format.html { redirect_to @charity_trustee, notice: 'Charity trustee was successfully created.' }
        format.json { render :show, status: :created, location: @charity_trustee }
      else
        format.html { render :new }
        format.json { render json: @charity_trustee.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charity_trustees/1
  # PATCH/PUT /charity_trustees/1.json
  def update
    respond_to do |format|
      if @charity_trustee.update(charity_trustee_params)
        format.html { redirect_to @charity_trustee, notice: 'Charity trustee was successfully updated.' }
        format.json { render :show, status: :ok, location: @charity_trustee }
      else
        format.html { render :edit }
        format.json { render json: @charity_trustee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charity_trustees/1
  # DELETE /charity_trustees/1.json
  def destroy
    @charity_trustee.destroy
    respond_to do |format|
      format.html { redirect_to charity_trustees_url, notice: 'Charity trustee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charity_trustee
      @charity_trustee = CharityTrustee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charity_trustee_params
      params.require(:charity_trustee).permit(:regno, :trustee)
    end
end
