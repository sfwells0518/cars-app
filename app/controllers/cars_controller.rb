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

  def create
    @car = Car.new(
      brand: params[:brand],
      model: params[:model],
      category: params[:category],
      year: params[:year],
    )
    @car.save
    render :show
    # render json: { message: "hello car create" }
  end

  def update
    @car = Car.find_by(id: params[:id])
    @car.brand = params[:brand] || @car.brand
    @car.model = params[:model] || @car.model
    @car.category = params[:category] || @car.category
    @car.year = params[:year] || @car.year

    @car.save
    render :show
    # render json: { message: "hello car update" }
  end

  def destroy
    @car = Car.find_by(id: params[:id])
    @car.destroy
    render json: { message: "Car has been successfully removed" }
  end
end
