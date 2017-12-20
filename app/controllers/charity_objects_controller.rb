class CharityObjectsController < ApplicationController
  before_action :set_charity_object, only: [:show, :edit, :update, :destroy]

  # GET /charity_objects
  # GET /charity_objects.json
  def index
    @charity_objects = CharityObject.search(params, 50)
  end

  # GET /charity_objects/1
  # GET /charity_objects/1.json
  def show
  end

  # GET /charity_objects/new
  def new
    @charity_object = CharityObject.new
  end

  # GET /charity_objects/1/edit
  def edit
  end

  # POST /charity_objects
  # POST /charity_objects.json
  def create
    @charity_object = CharityObject.new(charity_object_params)

    respond_to do |format|
      if @charity_object.save
        format.html { redirect_to @charity_object, notice: 'Charity object was successfully created.' }
        format.json { render :show, status: :created, location: @charity_object }
      else
        format.html { render :new }
        format.json { render json: @charity_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charity_objects/1
  # PATCH/PUT /charity_objects/1.json
  def update
    respond_to do |format|
      if @charity_object.update(charity_object_params)
        format.html { redirect_to @charity_object, notice: 'Charity object was successfully updated.' }
        format.json { render :show, status: :ok, location: @charity_object }
      else
        format.html { render :edit }
        format.json { render json: @charity_object.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charity_objects/1
  # DELETE /charity_objects/1.json
  def destroy
    @charity_object.destroy
    respond_to do |format|
      format.html { redirect_to charity_objects_url, notice: 'Charity object was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charity_object
      @charity_object = CharityObject.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charity_object_params
      params.require(:charity_object).permit(:regno, :subno, :seqno, :object)
    end
end
