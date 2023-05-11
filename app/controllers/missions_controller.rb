class MissionsController < ApplicationController

  def index
    @missions = Mission.all
    render json: @missions
  end

  def show
    @mission = Mission.find(params[:id])
    render json: @mission
  end

  def create
    @mission = Mission.create(
      mission_name: params[:mission_name],
      imageUrl: params[:imageUrl],
      location: params[:location],
      date: params[:date],
      rewards: params[:rewards]
    )
    render json: @mission
  end

  def update
    @mission = Mission.find(params[:id])
    @mission.update(
      mission_name: params[:mission_name],
      imageUrl: params[:imageUrl],
      location: params[:location],
      date: params[:date],
      rewards: params[:rewards]
    )
    render json: @mission
  end

end