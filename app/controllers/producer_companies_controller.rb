class ProducerCompaniesController < ApplicationController
  before_action :set_producer_company, only: [:show, :edit, :update, :destroy]

  # GET /producer_companies
  # GET /producer_companies.json
  def index
    @producer_companies = ProducerCompany.all
  end

  # GET /producer_companies/1
  # GET /producer_companies/1.json
  def show
  end

  # GET /producer_companies/new
  def new
    @producer_company = ProducerCompany.new
  end

  # GET /producer_companies/1/edit
  def edit
  end

  # POST /producer_companies
  # POST /producer_companies.json
  def create
    @producer_company = ProducerCompany.new(producer_company_params)

    respond_to do |format|
      if @producer_company.save
        format.html { redirect_to @producer_company, notice: 'Producer company was successfully created.' }
        format.json { render :show, status: :created, location: @producer_company }
      else
        format.html { render :new }
        format.json { render json: @producer_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producer_companies/1
  # PATCH/PUT /producer_companies/1.json
  def update
    respond_to do |format|
      if @producer_company.update(producer_company_params)
        format.html { redirect_to @producer_company, notice: 'Producer company was successfully updated.' }
        format.json { render :show, status: :ok, location: @producer_company }
      else
        format.html { render :edit }
        format.json { render json: @producer_company.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producer_companies/1
  # DELETE /producer_companies/1.json
  def destroy
    @producer_company.destroy
    respond_to do |format|
      format.html { redirect_to producer_companies_url, notice: 'Producer company was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producer_company
      @producer_company = ProducerCompany.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producer_company_params
      params.require(:producer_company).permit(:name, :address, :phone, :user_id)
    end
end
