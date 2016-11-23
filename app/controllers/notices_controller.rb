class NoticesController < ApplicationController
	before_action :logged_in_user
  	before_action :correct_user
	def show
		@notice = Notice.find(params[:id])
	end

	def index
		@user = User.find(params[:user_id])
		@notices = @user.notices
	end

	private
		def logged_in_user
		  unless logged_in?
			flash[:danger] = "Please log in." 
			redirect_to login_url
		  end
		end

		def correct_user
	      @user = User.find(params[:user_id])
		  redirect_to(root_url) unless current_user?(@user) 
		end
end
