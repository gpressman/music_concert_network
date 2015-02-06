class ShowsController < ApplicationController
	def self.show_find(id)
		where(id: id).first
	end

	def home
		@date= DateTime.now.utc
		@todays_shows=Show.where(date: @date.beginning_of_day..@date.end_of_day)
		@this_month= Show.where(date: @date.beginning_of_month..@date.end_of_month)
	end
		
	
		
	

	def index
		@shows=Show.all
		if @shows.empty?
		# render 'no_project_found'
		end
	end

	def show
		@show=Show.find(params[:id])
		if @show.nil?
		render 'no_projects_found'
		end

	end



	def new
		@show=Show.new 
		
	end
	

	def create 
		@show=Show.new show_params
		if @show.save
			redirect_to '/shows'
		else 
			render 'new'
		end
	end


	private

	def show_params
		params.require(:show).permit(:artist, :venue, :city, :description, :date)
	end
end

