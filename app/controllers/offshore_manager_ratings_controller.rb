class OffshoreManagerRatingsController < ApplicationController
  before_action :set_offshore_manager_rating, only: [:show, :edit, :update, :destroy]

  # GET /offshore_manager_ratings
  # GET /offshore_manager_ratings.json
  def index
    @offshore_manager_ratings = OffshoreManagerRating.all
  end

  # GET /offshore_manager_ratings/1
  # GET /offshore_manager_ratings/1.json
  def show
  end

  # GET /offshore_manager_ratings/new
  def new
    @offshore_manager_rating = OffshoreManagerRating.new
  end

  # GET /offshore_manager_ratings/1/edit
  def edit
  end

  # POST /offshore_manager_ratings
  # POST /offshore_manager_ratings.json
  def create
    # @offshore_manager_rating = OffshoreManagerRating.new(offshore_manager_rating_params)

    # respond_to do |format|
    #   if @offshore_manager_rating.save
    #     format.html { redirect_to @offshore_manager_rating, notice: 'Offshore manager rating was successfully created.' }
    #     format.json { render :show, status: :created, location: @offshore_manager_rating }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @offshore_manager_rating.errors, status: :unprocessable_entity }
    #   end
    # end

    @rating = OffshoreManagerRating.where(:employee_id => params[:employee_id], :month => params[:date][:month], :year => params[:date][:year]).first
    @employee = Employee.find params[:employee_id]
    if !@rating.blank?
      @rating.update(rating_params)
    else
      @rating = OffshoreManagerRating.new(rating_params)
      @rating.month = params[:date][:month]
      @rating.year = params[:date][:year]
      @rating.employee_id = params[:employee_id]
    end
      respond_to do |format|
        if @rating.save
          format.html { redirect_to evaluate_employee_path(@employee), notice: 'Rating was successfully created.' }
          format.json { render :show, status: :created, location: @rating }
        else
          format.html { render :new }
          format.json { render json: @rating.errors, status: :unprocessable_entity }
        end
      end
  end

  # PATCH/PUT /offshore_manager_ratings/1
  # PATCH/PUT /offshore_manager_ratings/1.json
  def update
    respond_to do |format|
      if @offshore_manager_rating.update(offshore_manager_rating_params)
        format.html { redirect_to @offshore_manager_rating, notice: 'Offshore manager rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @offshore_manager_rating }
      else
        format.html { render :edit }
        format.json { render json: @offshore_manager_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /offshore_manager_ratings/1
  # DELETE /offshore_manager_ratings/1.json
  def destroy
    @offshore_manager_rating.destroy
    respond_to do |format|
      format.html { redirect_to offshore_manager_ratings_url, notice: 'Offshore manager rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_offshore_manager_rating
      @offshore_manager_rating = OffshoreManagerRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def offshore_manager_rating_params
      params[:offshore_manager_rating]
    end
end
