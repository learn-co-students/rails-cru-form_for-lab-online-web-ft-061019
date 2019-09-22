class ArtistsController < ApplicationController

    def index
        @artists = Artist.all
    end

    def new
        @artist = Artist.new
    end

    def show
        find_artist_by_id
    end

    def create
        @artist = Artist.new(artist_params(:name, :bio))
        @artist.save
        redirect_to artist_path(@artist)
    end

    def update
        find_artist_by_id
        @artist.update(artist_params(:name, :bio))
        redirect_to artist_path(@artist)
    end

    def edit
        find_artist_by_id
    end

    private

    def artist_params(*args)
        params.require(:artist).permit(*args)
    end

    def find_artist_by_id
        @artist = Artist.find(params[:id])
    end

end
