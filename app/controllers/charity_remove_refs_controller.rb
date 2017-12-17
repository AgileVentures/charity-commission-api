class CharityRemoveRefsController < ApplicationController
  before_action :set_charity_remove_ref, only: [:show, :edit, :update, :destroy]

  # GET /charity_remove_refs
  # GET /charity_remove_refs.json
  def index
    @charity_remove_refs = CharityRemoveRef.all
  end

  # GET /charity_remove_refs/1
  # GET /charity_remove_refs/1.json
  def show
  end

  # GET /charity_remove_refs/new
  def new
    @charity_remove_ref = CharityRemoveRef.new
  end

  # GET /charity_remove_refs/1/edit
  def edit
  end

  # POST /charity_remove_refs
  # POST /charity_remove_refs.json
  def create
    @charity_remove_ref = CharityRemoveRef.new(charity_remove_ref_params)

    respond_to do |format|
      if @charity_remove_ref.save
        format.html { redirect_to @charity_remove_ref, notice: 'Charity remove ref was successfully created.' }
        format.json { render :show, status: :created, location: @charity_remove_ref }
      else
        format.html { render :new }
        format.json { render json: @charity_remove_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charity_remove_refs/1
  # PATCH/PUT /charity_remove_refs/1.json
  def update
    respond_to do |format|
      if @charity_remove_ref.update(charity_remove_ref_params)
        format.html { redirect_to @charity_remove_ref, notice: 'Charity remove ref was successfully updated.' }
        format.json { render :show, status: :ok, location: @charity_remove_ref }
      else
        format.html { render :edit }
        format.json { render json: @charity_remove_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charity_remove_refs/1
  # DELETE /charity_remove_refs/1.json
  def destroy
    @charity_remove_ref.destroy
    respond_to do |format|
      format.html { redirect_to charity_remove_refs_url, notice: 'Charity remove ref was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charity_remove_ref
      @charity_remove_ref = CharityRemoveRef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charity_remove_ref_params
      params.require(:charity_remove_ref).permit(:code, :text)
    end
end
