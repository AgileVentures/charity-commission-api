class CharityAoosController < ApplicationController
  before_action :set_charity_aoo, only: [:show, :edit, :update, :destroy]

  # GET /charity_aoos
  # GET /charity_aoos.json
  def index
    @charity_aoos = CharityAoo.search(params, 50)
  end

  # GET /charity_aoos/1
  # GET /charity_aoos/1.json
  def show
  end

  # GET /charity_aoos/new
  def new
    @charity_aoo = CharityAoo.new
  end

  # GET /charity_aoos/1/edit
  def edit
  end

  # POST /charity_aoos
  # POST /charity_aoos.json
  def create
    @charity_aoo = CharityAoo.new(charity_aoo_params)

    respond_to do |format|
      if @charity_aoo.save
        format.html { redirect_to @charity_aoo, notice: 'Charity aoo was successfully created.' }
        format.json { render :show, status: :created, location: @charity_aoo }
      else
        format.html { render :new }
        format.json { render json: @charity_aoo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charity_aoos/1
  # PATCH/PUT /charity_aoos/1.json
  def update
    respond_to do |format|
      if @charity_aoo.update(charity_aoo_params)
        format.html { redirect_to @charity_aoo, notice: 'Charity aoo was successfully updated.' }
        format.json { render :show, status: :ok, location: @charity_aoo }
      else
        format.html { render :edit }
        format.json { render json: @charity_aoo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charity_aoos/1
  # DELETE /charity_aoos/1.json
  def destroy
    @charity_aoo.destroy
    respond_to do |format|
      format.html { redirect_to charity_aoos_url, notice: 'Charity aoo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charity_aoo
      @charity_aoo = CharityAoo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charity_aoo_params
      params.require(:charity_aoo).permit(:regno, :aootype, :aookey, :welsh, :master)
    end
end
