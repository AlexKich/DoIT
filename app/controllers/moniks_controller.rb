class MoniksController < ApplicationController
  before_action :set_monik, only: [:show, :edit, :update, :destroy]

  # GET /moniks
  # GET /moniks.json
  def index
    @moniks = Monik.all
  end

  # GET /moniks/1
  # GET /moniks/1.json
  def show
  end

  # GET /moniks/new
  def new
    @monik = Monik.new
  end

  # GET /moniks/1/edit
  def edit
  end

  # POST /moniks
  # POST /moniks.json
  def create
    @monik = Monik.new(monik_params)

    respond_to do |format|
      if @monik.save
        format.html { redirect_to @monik, notice: 'Monik was successfully created.' }
        format.json { render action: 'show', status: :created, location: @monik }
      else
        format.html { render action: 'new' }
        format.json { render json: @monik.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /moniks/1
  # PATCH/PUT /moniks/1.json
  def update
    respond_to do |format|
      if @monik.update(monik_params)
        format.html { redirect_to @monik, notice: 'Monik was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @monik.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /moniks/1
  # DELETE /moniks/1.json
  def destroy
    @monik.destroy
    respond_to do |format|
      format.html { redirect_to moniks_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_monik
      @monik = Monik.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def monik_params
      params.require(:monik).permit(:inv_num, :by_doc, :by_price, :monitor_name, :diagonal, :spian, :spisan_txt, :department_id, :company_id)
    end
end
