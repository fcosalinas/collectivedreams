class ProducerTypesController < ApplicationController
  before_action :set_producer_type, only: [:show, :edit, :update, :destroy]

  # GET /producer_types
  # GET /producer_types.json
  def index
    @producer_types = ProducerType.all
  end

  # GET /producer_types/1
  # GET /producer_types/1.json
  def show
  end

  # GET /producer_types/new
  def new
    @producer_type = ProducerType.new
  end

  # GET /producer_types/1/edit
  def edit
  end

  # POST /producer_types
  # POST /producer_types.json
  def create
    @producer_type = ProducerType.new(producer_type_params)

    respond_to do |format|
      if @producer_type.save
        format.html { redirect_to @producer_type, notice: 'Producer type was successfully created.' }
        format.json { render :show, status: :created, location: @producer_type }
      else
        format.html { render :new }
        format.json { render json: @producer_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /producer_types/1
  # PATCH/PUT /producer_types/1.json
  def update
    respond_to do |format|
      if @producer_type.update(producer_type_params)
        format.html { redirect_to @producer_type, notice: 'Producer type was successfully updated.' }
        format.json { render :show, status: :ok, location: @producer_type }
      else
        format.html { render :edit }
        format.json { render json: @producer_type.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /producer_types/1
  # DELETE /producer_types/1.json
  def destroy
    @producer_type.destroy
    respond_to do |format|
      format.html { redirect_to producer_types_url, notice: 'Producer type was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_producer_type
      @producer_type = ProducerType.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def producer_type_params
      params.require(:producer_type).permit(:tipo)
    end
end
