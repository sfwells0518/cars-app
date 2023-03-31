class CarsController < ApplicationController
  def index
    @cars = Car.all
    render :index
    # render json: { message: "hello car index" }
  end
end
