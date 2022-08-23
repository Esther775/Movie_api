class MoviesController < ApplicationController
  def index
    movie = Movie.all
    render json: movie.as_json
  end

  def show
    movie = Movie.find_by(id: [params[:id]])
    render json: movie.as_json
  end

  def create
    movie = Movie.new(
      name: "Cinderella",
      year: "1985",
    )
    movie.save
    render json: movie.as_json
  end

  def update
    movie = Movie.find_by(id: [params[:id]])
    movie.name = params[:name] || movie.name
    movie.year = params[:year] || movie.year
    render json: movie.as_json
  end

  def destroy
    movie = Movie.find_by(id: [params[:id]])
    movie.destroy
    render json: { message: "Your movie has been deleted" }
  end
end
