class ArtistsController < ApplicationController

    def new
        @artist = Artist.new
    end

    def show
        @artist = Artist.find(params[:id])
        binding.pry
    end

    def create
        @artist = Artist.new
        @artist.save
        redirect_to artist_path(@artist)
    end
    
    def update
        @artist = Artist.find(params[:id])
        @artist.update(artist_params(:name, :bio))
        redirect_to artist_path(@artist)
    end

    private
    def artist_params(*args)
        params.require(:artist).permit(*args)
    end
end
