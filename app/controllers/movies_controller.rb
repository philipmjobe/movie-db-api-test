class MoviesController < ApplicationController
  def index
    response = HTTP.get("https://api.themoviedb.org/3/genre/movie/list?api_key=<<api_key>>&language=en-US")
    render json: response.parse(:json)
  end 
end
