class GenresController < ApplicationController
	respond_to :json

  def index
  end

  def all_genres
  	@genres = Genre.all
		respond_with @genres.to_json
  end
end
