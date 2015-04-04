class GenresController < ApplicationController
	respond_to :json

  def index
  end

  def all_genres
  	@genres = Genre.all
		respond_with @genres.to_json
  end

  def show
  	@tunes = Tune.where(:genre_id=>params[:id])
  	respond_with @tunes.to_json
  end
end