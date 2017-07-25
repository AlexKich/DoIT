class CleaningsController < ApplicationController
  before_action :set_cleaning, only: [:show, :edit, :update, :destroy, :user_report]
  
  # GET /cleanings
  # GET /cleanings.json

  def index
    @cleanings = Cleaning.all
    
    if current_user.cleaning < 2 then
      @cleanings = Cleaning.paginate(page: params[:page], :per_page => 10).order(date_check: :desc).all
      



    else
      @cleanings = Cleaning.where("user_shop_start = ? or user_shop_end = ?", current_user.id, current_user.id).order(date_check: :desc)
      @cleanings = @cleanings.paginate(page: params[:page], :per_page => 10)
    end
  end

  def index_minus
  
    @cleanings = Cleaning.where("minuscheck = ? or ostzam <> ?", "-", "")
    @cleanings = @cleanings.paginate(page: params[:page], :per_page => 10)

    
    
  end

  # GET /cleanings/1
  # GET /cleanings/1.json
  def show
    #Cleaning.joins(:users)
    @shopnum = Shop.find(@cleaning.shop_id)
    @userstart = User.find(@cleaning.user_shop_start)
    @userend = User.find(@cleaning.user_shop_end)
    @usercenzor = User.find(@cleaning.cenzor)
  end

  # GET /cleanings/new
  def new

    @cleaning = Cleaning.new

  end

  # GET /cleanings/1/edit
  def edit
 
  end

  # POST /cleanings
  # POST /cleanings.json
  def create
    @cleaning = Cleaning.new(cleaning_params)

    respond_to do |format|
      if @cleaning.user_shop_start.nil? && @cleaning.user_shop_end.nil?
        format.html { render action: 'new' }
        format.json { render json: @cleaning.errors, status: :unprocessable_entity }
        @cleaning.errors.messages
      else

          if @cleaning.user_shop_start.nil? then @cleaning.user_shop_start = 0 end
          if @cleaning.user_shop_end.nil? then @cleaning.user_shop_end = 0 end

          if @cleaning.flooring == '-' then @cleaning.minuscheck = "-" end
          if @cleaning.wc == '-' then @cleaning.minuscheck = "-" end
          if @cleaning.shelves == '-' then @cleaning.minuscheck = "-"  end
          if @cleaning.storeroom == '-' then @cleaning.minuscheck = "-" end          
          if @cleaning.territory == '-' then @cleaning.minuscheck = "-" end
          if @cleaning.household_eq == '-' then @cleaning.minuscheck = "-" end
          if @cleaning.orderinbox == '-' then @cleaning.minuscheck = "-" end
          if @cleaning.orderindoc == '-' then @cleaning.minuscheck = "-" end
          if @cleaning.displayofgoods == '-' then @cleaning.minuscheck = "-" end
          if @cleaning.price_tags == '-' then @cleaning.minuscheck = "-" end
          if @cleaning.tech_eq == '-' then @cleaning.minuscheck = "-" end
 



        @cleaning.save
        format.html { redirect_to @cleaning, notice: 'Cleaning was successfully created.' }
        format.json { render action: 'show', status: :created, location: @cleaning }
      end
    end
  end

  # PATCH/PUT /cleanings/1
  # PATCH/PUT /cleanings/1.json
  def update
    respond_to do |format|
      if @cleaning.update(cleaning_params)
        format.html { redirect_to @cleaning, notice: 'Cleaning was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @cleaning.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /cleanings/1
  # DELETE /cleanings/1.json
  def destroy
    @cleaning.destroy
    respond_to do |format|
      format.html { redirect_to cleanings_url }
      format.json { head :no_content }
    end
  end

  def shop_report
    @title = "Отчёт по магазинам"
    @shopid = Shop.where(number: params[:id]).first
    @cleanings = Cleaning.where("shop_id = ?", @shopid.id).paginate(page: params[:page], :per_page => 10)
    @shopnumber = params[:id]
    
  end

  def user_report
  end

  private
    # Проверка на обязательные поля


    # Use callbacks to share common setup or constraints between actions.
    def set_cleaning
      @cleaning = Cleaning.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def cleaning_params
      params.require(:cleaning).permit(:date_check, :user_shop_start, :user_shop_end, :cenzor, :flooring, :wc, :shelves, :storeroom, :territory, :household_eq, :orderinbox, :orderindoc, :displayofgoods, :price_tags, :tech_eq, :shop_id, :user_id, :minuscheck, :ostzam)
    end
end
