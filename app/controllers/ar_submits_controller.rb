class ArSubmitsController < ApplicationController
  before_action :set_ar_submit, only: [:show, :edit, :update, :destroy]

  # GET /ar_submits
  # GET /ar_submits.json
  def index
    @ar_submits = ArSubmit.first(50)
  end

  # GET /ar_submits/1
  # GET /ar_submits/1.json
  def show
  end

  # GET /ar_submits/new
  def new
    @ar_submit = ArSubmit.new
  end

  # GET /ar_submits/1/edit
  def edit
  end

  # POST /ar_submits
  # POST /ar_submits.json
  def create
    @ar_submit = ArSubmit.new(ar_submit_params)

    respond_to do |format|
      if @ar_submit.save
        format.html { redirect_to @ar_submit, notice: 'Ar submit was successfully created.' }
        format.json { render :show, status: :created, location: @ar_submit }
      else
        format.html { render :new }
        format.json { render json: @ar_submit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /ar_submits/1
  # PATCH/PUT /ar_submits/1.json
  def update
    respond_to do |format|
      if @ar_submit.update(ar_submit_params)
        format.html { redirect_to @ar_submit, notice: 'Ar submit was successfully updated.' }
        format.json { render :show, status: :ok, location: @ar_submit }
      else
        format.html { render :edit }
        format.json { render json: @ar_submit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /ar_submits/1
  # DELETE /ar_submits/1.json
  def destroy
    @ar_submit.destroy
    respond_to do |format|
      format.html { redirect_to ar_submits_url, notice: 'Ar submit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_ar_submit
      @ar_submit = ArSubmit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def ar_submit_params
      params.require(:ar_submit).permit(:regno, :arno, :submit_date)
    end
end
