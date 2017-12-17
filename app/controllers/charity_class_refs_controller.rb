class CharityClassRefsController < ApplicationController
  before_action :set_charity_class_ref, only: [:show, :edit, :update, :destroy]

  # GET /charity_class_refs
  # GET /charity_class_refs.json
  def index
    @charity_class_refs = CharityClassRef.first(50)
  end

  # GET /charity_class_refs/1
  # GET /charity_class_refs/1.json
  def show
  end

  # GET /charity_class_refs/new
  def new
    @charity_class_ref = CharityClassRef.new
  end

  # GET /charity_class_refs/1/edit
  def edit
  end

  # POST /charity_class_refs
  # POST /charity_class_refs.json
  def create
    @charity_class_ref = CharityClassRef.new(charity_class_ref_params)

    respond_to do |format|
      if @charity_class_ref.save
        format.html { redirect_to @charity_class_ref, notice: 'Charity class ref was successfully created.' }
        format.json { render :show, status: :created, location: @charity_class_ref }
      else
        format.html { render :new }
        format.json { render json: @charity_class_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charity_class_refs/1
  # PATCH/PUT /charity_class_refs/1.json
  def update
    respond_to do |format|
      if @charity_class_ref.update(charity_class_ref_params)
        format.html { redirect_to @charity_class_ref, notice: 'Charity class ref was successfully updated.' }
        format.json { render :show, status: :ok, location: @charity_class_ref }
      else
        format.html { render :edit }
        format.json { render json: @charity_class_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charity_class_refs/1
  # DELETE /charity_class_refs/1.json
  def destroy
    @charity_class_ref.destroy
    respond_to do |format|
      format.html { redirect_to charity_class_refs_url, notice: 'Charity class ref was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charity_class_ref
      @charity_class_ref = CharityClassRef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charity_class_ref_params
      params.require(:charity_class_ref).permit(:classno, :classtext)
    end
end
