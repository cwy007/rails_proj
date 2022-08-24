class Api::PackingStrategyHierarchysController < ApplicationController
  def index
    render json: PackingStrategyHierarchy.all.to_json
  end
end
