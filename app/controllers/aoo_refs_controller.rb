class AooRefsController < ApplicationController
  before_action :set_aoo_ref, only: [:show, :edit, :update, :destroy]

  # GET /aoo_refs
  # GET /aoo_refs.json
  def index
    @aoo_refs = AooRef.first(50)
  end

  # GET /aoo_refs/1
  # GET /aoo_refs/1.json
  def show
  end

  # GET /aoo_refs/new
  def new
    @aoo_ref = AooRef.new
  end

  # GET /aoo_refs/1/edit
  def edit
  end

  # POST /aoo_refs
  # POST /aoo_refs.json
  def create
    @aoo_ref = AooRef.new(aoo_ref_params)

    respond_to do |format|
      if @aoo_ref.save
        format.html { redirect_to @aoo_ref, notice: 'Aoo ref was successfully created.' }
        format.json { render :show, status: :created, location: @aoo_ref }
      else
        format.html { render :new }
        format.json { render json: @aoo_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /aoo_refs/1
  # PATCH/PUT /aoo_refs/1.json
  def update
    respond_to do |format|
      if @aoo_ref.update(aoo_ref_params)
        format.html { redirect_to @aoo_ref, notice: 'Aoo ref was successfully updated.' }
        format.json { render :show, status: :ok, location: @aoo_ref }
      else
        format.html { render :edit }
        format.json { render json: @aoo_ref.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /aoo_refs/1
  # DELETE /aoo_refs/1.json
  def destroy
    @aoo_ref.destroy
    respond_to do |format|
      format.html { redirect_to aoo_refs_url, notice: 'Aoo ref was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_aoo_ref
      @aoo_ref = AooRef.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def aoo_ref_params
      params.require(:aoo_ref).permit(:aootype, :aookey, :aooname, :aoosort, :welsh, :master, :code)
    end
end
