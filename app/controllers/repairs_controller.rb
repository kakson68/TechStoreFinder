class RepairsController < ApplicationController
  before_action :set_repair, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!, except: [:index, :show]

  # GET /repairs
  # GET /repairs.json
  
  def index
    #conducting simple search
     @repairs = Repair.search(params[:search])
    

 
    #@repairs = Repair.all
  end

  # GET /repairs/1
  # GET /repairs/1.json
  def show
      #insert now
  @repair = Repair.find(params[:id])
  end

  # GET /repairs/new
  def new
    @repair = Repair.new
    
    #add jkm
    @serviceproviders = Serviceprovider.all
    
  end

  # GET /repairs/1/edit
  def edit
    
    #add jkm
    @serviceproviders = Serviceprovider.all
   
  end

  # POST /repairs
  # POST /repairs.json
  def create
   # @repair = Repair.new(repair_params) this change to current_user jkm
   # this will let us know the user who created the repair
   
   #added jkm
   @serviceproviders = Serviceprovider.all
   
   
   @repair = current_user.repairs.new(repair_params)

    respond_to do |format|
      if @repair.save
        format.html { redirect_to @repair, notice: 'Repair was successfully created.' }
        format.json { render :show, status: :created, location: @repair }
      else
        format.html { render :new }
        format.json { render json: @repair.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /repairs/1
  # PATCH/PUT /repairs/1.json
  def update
    @serviceproviders = Serviceprovider.all
    respond_to do |format|
      if @repair.update(repair_params)
        format.html { redirect_to @repair, notice: 'Repair was successfully updated.' }
        format.json { render :show, status: :ok, location: @repair }
      else
        format.html { render :edit }
        format.json { render json: @repair.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /repairs/1
  # DELETE /repairs/1.json
  def destroy
    @repair.destroy
    respond_to do |format|
      format.html { redirect_to repairs_url, notice: 'Repair was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_repair
      @repair = Repair.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def repair_params
      params.require(:repair).permit(:job_number, :fault, :descrition, :repair_type, :booking_date, :location, :repairer, :serviceprovider_id)
      
    end
end
