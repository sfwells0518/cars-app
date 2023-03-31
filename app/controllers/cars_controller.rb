class CarsController < ApplicationController
  def index
    @cars = Car.all
    render :index
    # render json: { message: "hello car index" }
  end

  def show
    @car = Car.find_by(id: params[:id])
    render :show
    # render json: { message: "hello car show" }
  end
end
