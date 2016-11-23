class ClubsController < ApplicationController
	def show
		@club = Club.find(params[:id])
	end

	def edit
		@club = Club.find(params[:id])
	end

	def index
		@clubs = Club.all
	end

	def update
		@club = Club.find(params[:id])
		if @club.update_attributes(club_params)
		  flash[:success] = "Profile updated"
		  redirect_to @club     
		else
		  render 'edit' 
		end
	end

	private
		def club_params
		  params.require(:club).permit(:name, :logo, :introduction, :email)
		end
end
