class OnsiteManagerRatingsController < ApplicationController
  before_action :set_onsite_manager_rating, only: [:show, :edit, :update, :destroy]

  # GET /onsite_manager_ratings
  # GET /onsite_manager_ratings.json
  def index
    @onsite_manager_ratings = OnsiteManagerRating.all
  end

  # GET /onsite_manager_ratings/1
  # GET /onsite_manager_ratings/1.json
  def show
  end

  # GET /onsite_manager_ratings/new
  def new
    @onsite_manager_rating = OnsiteManagerRating.new
  end

  # GET /onsite_manager_ratings/1/edit
  def edit
  end

  # POST /onsite_manager_ratings
  # POST /onsite_manager_ratings.json
  def create
    # @onsite_manager_rating = OnsiteManagerRating.new(onsite_manager_rating_params)

    # respond_to do |format|
    #   if @onsite_manager_rating.save
    #     format.html { redirect_to @onsite_manager_rating, notice: 'Onsite manager rating was successfully created.' }
    #     format.json { render :show, status: :created, location: @onsite_manager_rating }
    #   else
    #     format.html { render :new }
    #     format.json { render json: @onsite_manager_rating.errors, status: :unprocessable_entity }
    #   end
    # end

    @rating = OnsiteManagerRating.where(:employee_id => params[:employee_id], :month => params[:date][:month], :year => params[:date][:year]).first
    @employee = Employee.find params[:employee_id]
    if !@rating.blank?
      @rating.update(rating_params)
    else
      @rating = OnsiteManagerRating.new(rating_params)
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

  # PATCH/PUT /onsite_manager_ratings/1
  # PATCH/PUT /onsite_manager_ratings/1.json
  def update
    respond_to do |format|
      if @onsite_manager_rating.update(onsite_manager_rating_params)
        format.html { redirect_to @onsite_manager_rating, notice: 'Onsite manager rating was successfully updated.' }
        format.json { render :show, status: :ok, location: @onsite_manager_rating }
      else
        format.html { render :edit }
        format.json { render json: @onsite_manager_rating.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /onsite_manager_ratings/1
  # DELETE /onsite_manager_ratings/1.json
  def destroy
    @onsite_manager_rating.destroy
    respond_to do |format|
      format.html { redirect_to onsite_manager_ratings_url, notice: 'Onsite manager rating was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_onsite_manager_rating
      @onsite_manager_rating = OnsiteManagerRating.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def onsite_manager_rating_params
      params[:onsite_manager_rating]
    end
end
