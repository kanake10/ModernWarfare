class OperatorsController < ApplicationController

  def index
    @operators = Operator.all
    render json: @operators
  end


  def create
    @operator = Operator.create(
      name: params[:name],
      unit: params[:unit],
      image: params[:image]
    )
    render json: @operator
  end
end