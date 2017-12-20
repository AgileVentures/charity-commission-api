class CharityNamesController < ApplicationController
  before_action :set_charity_name, only: [:show, :edit, :update, :destroy]

  # GET /charity_names
  # GET /charity_names.json
  def index
    @charity_names = CharityName.search(params, 50)
  end

  # GET /charity_names/1
  # GET /charity_names/1.json
  def show
  end

  # GET /charity_names/new
  def new
    @charity_name = CharityName.new
  end

  # GET /charity_names/1/edit
  def edit
  end

  # POST /charity_names
  # POST /charity_names.json
  def create
    @charity_name = CharityName.new(charity_name_params)

    respond_to do |format|
      if @charity_name.save
        format.html { redirect_to @charity_name, notice: 'Charity name was successfully created.' }
        format.json { render :show, status: :created, location: @charity_name }
      else
        format.html { render :new }
        format.json { render json: @charity_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charity_names/1
  # PATCH/PUT /charity_names/1.json
  def update
    respond_to do |format|
      if @charity_name.update(charity_name_params)
        format.html { redirect_to @charity_name, notice: 'Charity name was successfully updated.' }
        format.json { render :show, status: :ok, location: @charity_name }
      else
        format.html { render :edit }
        format.json { render json: @charity_name.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charity_names/1
  # DELETE /charity_names/1.json
  def destroy
    @charity_name.destroy
    respond_to do |format|
      format.html { redirect_to charity_names_url, notice: 'Charity name was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charity_name
      @charity_name = CharityName.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charity_name_params
      params.require(:charity_name).permit(:regno, :subno, :nameno, :name)
    end
end
