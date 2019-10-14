class DashboardController < ApplicationController
  
  def index
  	# if user_signed_in?
		  @user = User.find(1)
		  @user_orders = @user.orders
  			@user_keywords = @user.keywords
  		#redirect_to keywords_path
  	# else
  	# 	redirect_to new_user_session_url
  	# end
  end

end
