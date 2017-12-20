class AcctSubmitsController < ApplicationController
  before_action :set_acct_submit, only: [:show, :edit, :update, :destroy]

  # GET /acct_submits
  # GET /acct_submits.json
  def index
    @acct_submits = AcctSubmit.search(params, 50)
  end

  # GET /acct_submits/1
  # GET /acct_submits/1.json
  def show
  end

  # GET /acct_submits/new
  def new
    @acct_submit = AcctSubmit.new
  end

  # GET /acct_submits/1/edit
  def edit
  end

  # POST /acct_submits
  # POST /acct_submits.json
  def create
    @acct_submit = AcctSubmit.new(acct_submit_params)

    respond_to do |format|
      if @acct_submit.save
        format.html { redirect_to @acct_submit, notice: 'Acct submit was successfully created.' }
        format.json { render :show, status: :created, location: @acct_submit }
      else
        format.html { render :new }
        format.json { render json: @acct_submit.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /acct_submits/1
  # PATCH/PUT /acct_submits/1.json
  def update
    respond_to do |format|
      if @acct_submit.update(acct_submit_params)
        format.html { redirect_to @acct_submit, notice: 'Acct submit was successfully updated.' }
        format.json { render :show, status: :ok, location: @acct_submit }
      else
        format.html { render :edit }
        format.json { render json: @acct_submit.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /acct_submits/1
  # DELETE /acct_submits/1.json
  def destroy
    @acct_submit.destroy
    respond_to do |format|
      format.html { redirect_to acct_submits_url, notice: 'Acct submit was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_acct_submit
      @acct_submit = AcctSubmit.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def acct_submit_params
      params.require(:acct_submit).permit(:regno, :submit_date, :arno, :fyend)
    end
end
