class SongsController < ApplicationController

    def index
        @songs = Song.all
    end

    def new
        @song = Song.new
    end

    def show
        find_song_by_id
        @artist = @song.artist
        @genre = @song.genre
    end

    def create
        @song = Song.new(song_params(:name, :artist_id, :genre_id))
        @song.save
        redirect_to song_path(@song)
    end

    def update
        find_song_by_id
        @song.update(song_params(:name))
        redirect_to song_path(@song)
    end

    def edit
        find_song_by_id
    end

    private

    def song_params(*args)
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end

    def find_song_by_id
        @song = Song.find(params[:id])
    end

end
