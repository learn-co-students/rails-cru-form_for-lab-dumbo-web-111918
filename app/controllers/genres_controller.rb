class GenresController < ApplicationController
before_action :find_genre, only: [:show, :update, :edit]
	def show

	end

	def new
	end

	def edit
	end

	def create
		@genre = Genre.create(genre_params(:name))
		redirect_to @genre
	end

	def update
		@genre.update(genre_params(:name))
		redirect_to @genre
	end

	private

		def genre_params(*args)
			params.require(:genre).permit(*args)
		end

		def find_genre
			@genre = Genre.find(params[:id])
		end
end
