class TunesController < ApplicationController
	respond_to :json

  def index

  end

  def all_tunes
  	@tunes = Tune.all
		respond_with @tunes.to_json
  end

  def show
    @tune = Tune.find(params[:id])
    respond_with @tune.to_json
  end

  def create
  	@tune = Tune.create(tune_params)
		render json: @tune, status: 201
  end

  def tune_params
    params.require(:tune).permit(:artist, :title, :blog, :link)
  end
end
