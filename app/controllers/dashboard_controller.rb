class DashboardController < ApplicationController
  
	def index
		# if !User.blank?
		# 	@user = User.all
		# 		@user_orders = @user.orders
		# 		if @user
		# 			@user_keywords = @user_keywords.blank? ? ["Empty"] : @user.keywords
		# 		end
		# 	redirect_to keywords_path
		# else
				@user = 'Neophemeral'				
			console
		# end
	end

end
