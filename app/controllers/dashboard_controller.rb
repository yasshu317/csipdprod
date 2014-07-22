class DashboardController < ApplicationController

  before_action :authenticate_user! 

  def index
  	  @temp = "CSIP"
  end

end
