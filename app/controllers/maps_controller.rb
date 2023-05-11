class MapsController < ApplicationController
  def index
    @maps = Map.all.paginate(page: params[:page], per_page: 3)
    render json: {
      maps: @maps,
      pagination: {
        total_pages: @maps.total_pages,
        current_page: @maps.current_page,
        per_page: @maps.per_page
      }
    }
  end
  def show
    @map = Map.find(params[:id])
    render json: @map
  end

end
