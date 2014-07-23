class EmployeesController < ApplicationController
  before_action :set_employee, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_user!

  # GET /employees
  # GET /employees.json
  def index
    @employees = Employee.all
  end

  # GET /employees/1
  # GET /employees/1.json
  def show
  end

  # GET /employees/new
  def new
    @employee = Employee.new
  end

  # GET /employees/1/edit
  def edit
    if params[:month].blank? 
    @rating = Rating.new
      respond_to do |format|
        format.html
      end
    else
      @rating = Rating.find_by_employee_id_and_month_and_year(params[:id], params[:month], params[:year])
      respond_to do |format|
        format.js 
      end
    end
  end

  # POST /employees
  # POST /employees.json
  def create
    @employee = Employee.new(employee_params)

    respond_to do |format|
      if @employee.save
        format.html { redirect_to @employee, notice: 'Employee was successfully created.' }
        format.json { render :show, status: :created, location: @employee }
      else
        format.html { render :new }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  def evaluate
     @employee = Employee.find(params[:id])
     @rating = Rating.new
  end

  def rating
    @rating = Rating.find_by_employee_id_and_month_and_year(params[:id], params[:month], params[:year])
    if @rating.blank?
      @rating = Rating.new
    end
    @employee = Employee.find(params[:id])
    respond_to do |format|
      format.js 
    end
  end

  def save_rating
    @rating = Rating.find_by_employee_id_and_month_and_year(params[:id], params[:month], params[:year])
    if @rating.blank?
      @rating = Rating.new
    end
    @rating.month = params[:month]
    @rating.year = params[:year]
    @rating.verbal = params[:verbal]
    @rating.written = params[:written]
    @rating.leadership = params[:leadership]
    @rating.ownership = params[:ownership]
    @rating.responsiveness=params[:responsiveness]
    @rating.presentation = params[:presentation]
    @rating.assertiveness = params[:assertiveness]
    @rating.discipline = params[:discipline]
    @rating.domain_knowledge = params[:rating_domain_knowledge]
    @rating.technical_knowledge = params[:rating_technical_knowledge]
    @rating.employee_id  = params[:id]
    @rating.save

    render :nothing => true, :status => 200, :content_type => 'text/html'
  end

  # PATCH/PUT /employees/1
  # PATCH/PUT /employees/1.json
  def update
    respond_to do |format|
      if @employee.update_attribute(:score, params[:employee])
        format.html { redirect_to @employee, notice: 'Employee was successfully updated.' }
        format.json { render :show, status: :ok, location: @employee }
      else
        format.html { render :edit }
        format.json { render json: @employee.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /employees/1
  # DELETE /employees/1.json
  def destroy
    @employee.destroy
    respond_to do |format|
      format.html { redirect_to employees_url, notice: 'Employee was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_employee
      @employee = Employee.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def employee_params
      params.require(:employee).permit(:name, :score)
    end
end
