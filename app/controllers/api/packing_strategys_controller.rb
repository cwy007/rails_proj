class Api::PackingStrategysController < ApplicationController
  def index
    render json: PackingStrategy.all.to_json
  end
end
