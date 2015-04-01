class TunesController < ApplicationController
	respond_to :json

  def index

  end

  def all_tunes
  	@tunes = Tune.all
		respond_with @tunes.to_json
  end
  
end
