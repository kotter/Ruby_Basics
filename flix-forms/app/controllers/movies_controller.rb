class MoviesController < ApplicationController
	def about
	end

	def index
		@movies = Movie.all
	end

	def privacy
		render 'privacy_policy'
	end

	def show
		@movie = Movie.find(params[:id])
	end

	def murder
		@movie = Movie.find(1)
		render 'show'
	end
end
