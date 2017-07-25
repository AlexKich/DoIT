class HardwaresController < ApplicationController
  before_action :set_hardware, only: [:show, :edit, :update, :destroy]

  # GET /hardwares
  # GET /hardwares.json
  def index
    @hardwares = Hardware.paginate(page: params[:page], :per_page => 15)
  end

  def index_department
    @hardwares = Hardware.paginate(page: params[:page], :per_page => 15).order('department_name DESC')
  end

  # GET /hardwares/1
  # GET /hardwares/1.json
  def show
  end

  # GET /hardwares/new
  def new
    @hardware = Hardware.new
  end

  # GET /hardwares/1/edit
  def edit
  end

  # POST /hardwares
  # POST /hardwares.json
  def create
    @hardware = Hardware.new(hardware_params)
    if params[:article].present?
      file = params[:article][:file]
      File.open(Rails.root.join('app','assets', 'images', file.original_filename), 'wb') do |f|
        f.write(file.read)
        end
    end
    respond_to do |format|
      if @hardware.save
        format.html { redirect_to @hardware, notice: 'Hardware was successfully created.' }
        format.json { render action: 'show', status: :created, location: @hardware }
      else
        format.html { render action: 'new' }
        format.json { render json: @hardware.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /hardwares/1
  # PATCH/PUT /hardwares/1.json
  def update
    if params[:article].present?
      file = params[:article][:file]
      File.open(Rails.root.join('app','assets', 'images', file.original_filename), 'wb') do |f|
        f.write(file.read)
      end
    end
    respond_to do |format|
      if @hardware.update(hardware_params)
        format.html { redirect_to @hardware, notice: 'Hardware was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @hardware.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /hardwares/1
  # DELETE /hardwares/1.json
  def destroy
    @hardware.destroy
    respond_to do |format|
      format.html { redirect_to hardwares_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_hardware
      @hardware = Hardware.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def hardware_params
      params.require(:hardware).permit(:inv_num, :company_id, :department_id, :by_doc, :by_price, :model_name, :notebook, :cpu, :memory, :hdd, :keyboard, :mouse, :speaker, :spisan, :spisan_txt, :user_id, :coworker_id)
    end
end
