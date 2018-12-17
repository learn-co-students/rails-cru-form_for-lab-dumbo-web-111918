class SongsController < ApplicationController
before_action :find_song, only: [:show, :update, :edit]

	def index
		@songs = Song.all
	end

	def show

	end

	def new
	end

	def edit
	end

	def create
		@song = Song.create(song_params(:name, :artist_id, :genre_id))
		redirect_to @song
	end

	def update
		@song.update(song_params(:name, :artist_id, :genre_id))
		redirect_to @song
	end

	private

		def song_params(*args)
			params.require(:song).permit(*args)
		end

		def find_song
			@song = Song.find(params[:id])
		end
end
