class ArtistsController < ApplicationController
before_action :find_artist, only: [:show, :update, :edit]
	def show

	end

	def new
	end

	def edit
	end

	def create
		@artist = Artist.create(artist_params(:name, :bio))
		redirect_to @artist
	end

	def update
		@artist.update(artist_params(:name, :bio))
		redirect_to @artist
	end

	private

		def artist_params(*args)
			params.require(:artist).permit(*args)
		end

		def find_artist
			@artist = Artist.find(params[:id])
		end
end
