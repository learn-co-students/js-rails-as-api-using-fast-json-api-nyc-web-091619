class SightingsController < ApplicationController
  include FastJsonapi::ObjectSerializer
  attributes :created_at
  belongs_to :bird
  belongs_to :location

  def index
    sightings = Sighting.all
    render json: SightingSerializer.new(sightings)
  end
  
  def show
    @sighting = Sighting.find(params[:id])
    render json: SightingSerializer.new(sighting)
  end



end