class DashboardController < ApplicationController
	before_filter :authenticate_user! 
	before_filter :activo_user
#metodo 	
  def index
  end
#metodo privado
private
  def activo_user
  	if current_user.activo?
  		true
    #redirect_to new_user_session_path unless current_user.activo?
    #redirect_to new_user_session_path
		else
	redirect_to url_for(:controller => :home, :action => :index)	
	end
  end

end
