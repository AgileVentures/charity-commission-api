class CharityClassesController < ApplicationController
  before_action :set_charity_class, only: [:show, :edit, :update, :destroy]

  # GET /charity_classes
  # GET /charity_classes.json
  def index
    @charity_classes = CharityClass.search(params, 50)
  end

  # GET /charity_classes/1
  # GET /charity_classes/1.json
  def show
  end

  # GET /charity_classes/new
  def new
    @charity_class = CharityClass.new
  end

  # GET /charity_classes/1/edit
  def edit
  end

  # POST /charity_classes
  # POST /charity_classes.json
  def create
    @charity_class = CharityClass.new(charity_class_params)

    respond_to do |format|
      if @charity_class.save
        format.html { redirect_to @charity_class, notice: 'Charity class was successfully created.' }
        format.json { render :show, status: :created, location: @charity_class }
      else
        format.html { render :new }
        format.json { render json: @charity_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charity_classes/1
  # PATCH/PUT /charity_classes/1.json
  def update
    respond_to do |format|
      if @charity_class.update(charity_class_params)
        format.html { redirect_to @charity_class, notice: 'Charity class was successfully updated.' }
        format.json { render :show, status: :ok, location: @charity_class }
      else
        format.html { render :edit }
        format.json { render json: @charity_class.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charity_classes/1
  # DELETE /charity_classes/1.json
  def destroy
    @charity_class.destroy
    respond_to do |format|
      format.html { redirect_to charity_classes_url, notice: 'Charity class was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charity_class
      @charity_class = CharityClass.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charity_class_params
      params.require(:charity_class).permit(:regno, :charity_class)
    end
end
