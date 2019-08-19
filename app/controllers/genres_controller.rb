class GenresController < ApplicationController
    def index
    end
    
    def create
        @genre = Genre.create(post_params)
        redirect_to genre_path(@genre)
    end

    def new
        @genre = Genre.new
    end 
    
    def show
        @genre = Genre.find(params[:id])
    end
    
    def update
        @genre = Genre.update(post_params)
        redirect_to genre_path(@genre)
    end

    def edit
        @genre = Genre.find(params[:id])
    end

    private

    def post_params
        params.require(:genre).permit(:name)
    end
end