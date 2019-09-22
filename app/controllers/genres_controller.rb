class GenresController < ApplicationController

    def index
        @genres = Genre.all
    end

    def new
        @genre = Genre.new
    end

    def show
        find_genre_by_id
    end

    def create
        @genre = Genre.new(genre_params(:name))
        @genre.save
        redirect_to genre_path(@genre)
    end

    def update
        find_genre_by_id
        @genre.update(genre_params(:name))
        redirect_to genre_path(@genre)
    end

    def edit
        find_genre_by_id
    end

    private

    def genre_params(*args)
        params.require(:genre).permit(*args)
    end

    def find_genre_by_id
        @genre = Genre.find(params[:id])
    end

end
