class SongsController < ApplicationController
    def index
        @songs = Song.all
    end
    
    def create
        @song = Song.create(post_params)
        redirect_to song_path(@song)
    end

    def new
        @song = Song.new
    end 
    
    def show
        @song = Song.find(params[:id])
    end
    
    def update
        @song = Song.update(post_params)
        redirect_to song_path(@song)
    end

    def edit
        @song = Song.find(params[:id])
    end

    private

    def post_params
        params.require(:song).permit(:name, :artist_id, :genre_id)
    end
end
