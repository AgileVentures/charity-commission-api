class CharityPartbsController < ApplicationController
  before_action :set_charity_partb, only: [:show, :edit, :update, :destroy]

  # GET /charity_partbs
  # GET /charity_partbs.json
  def index
    @charity_partbs = CharityPartb.first(50)
  end

  # GET /charity_partbs/1
  # GET /charity_partbs/1.json
  def show
  end

  # GET /charity_partbs/new
  def new
    @charity_partb = CharityPartb.new
  end

  # GET /charity_partbs/1/edit
  def edit
  end

  # POST /charity_partbs
  # POST /charity_partbs.json
  def create
    @charity_partb = CharityPartb.new(charity_partb_params)

    respond_to do |format|
      if @charity_partb.save
        format.html { redirect_to @charity_partb, notice: 'Charity partb was successfully created.' }
        format.json { render :show, status: :created, location: @charity_partb }
      else
        format.html { render :new }
        format.json { render json: @charity_partb.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /charity_partbs/1
  # PATCH/PUT /charity_partbs/1.json
  def update
    respond_to do |format|
      if @charity_partb.update(charity_partb_params)
        format.html { redirect_to @charity_partb, notice: 'Charity partb was successfully updated.' }
        format.json { render :show, status: :ok, location: @charity_partb }
      else
        format.html { render :edit }
        format.json { render json: @charity_partb.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /charity_partbs/1
  # DELETE /charity_partbs/1.json
  def destroy
    @charity_partb.destroy
    respond_to do |format|
      format.html { redirect_to charity_partbs_url, notice: 'Charity partb was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_charity_partb
      @charity_partb = CharityPartb.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def charity_partb_params
      params.require(:charity_partb).permit(:regno, :artype, :fystart, :fyend, :inc_leg, :inc_end, :inc_vol, :inc_fr, :inc_char, :inc_invest, :inc_other, :inc_total, :invest_gain, :asset_gain, :pension_gain, :exp_vol, :exp_trade, :exp_invest, :exp_grant, :exp_charble, :exp_gov, :exp_other, :exp_total, :exp_support, :exp_dep, :reserves, :asset_open, :asset_close, :fixed_assets, :open_assets, :invest_assets, :cash_assets, :current_assets, :credit_1, :credit_long, :pension_assets, :total_assets, :funds_end, :funds_restrict, :funds_unrestrict, :funds_total, :employees, :volunteers, :cons_acc, :charity_acc)
    end
end
