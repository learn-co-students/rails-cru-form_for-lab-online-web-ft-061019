class GenresController < ApplicationController
    def create
        @genre = Genre.new(genre_params(:name))
        @genre.save
        redirect_to genre_path(@genre)
    end

    def show
        @genre = Genre.find(params[:id])
    end
    
    def update
        @genre = Genre.find(params[:id])
        @genre.update(genre_params(:name))
        redirect_to genre_path(@genre)
    end

    private
    def genre_params

    end
end
