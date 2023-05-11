class VehiclesController < ApplicationController
  def index
    @vehicles = Vehicle.all
    render json: @vehicles
  end

  def show
    @vehicle = Vehicle.find(params[:id])
    render json: @vehicle
  end
end
