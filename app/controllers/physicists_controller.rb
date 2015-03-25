class PhysicistsController < ApplicationController

  def index
    @physicists = Physicist.all
  end

  def show
    @physicist = Physicist.find(params[:id])
  end

  def new
    @physicist = Physicist.new
  end

  def edit
    @physicist = Physicist.find(params[:id])
  end

  def create
    @physicist = Physicist.new(physicist_params)

    if @physicist.save
      redirect_to @physicist
    else
      render 'new'
    end
  end

  def update
    @physicist = Physicist.find(params[:id])

    if @physicist.update(physicist_params)
      redirect_to @physicist
    else
      render 'edit'
    end
  end

  private

  def physicist_params
    params.require(:physicist).permit(:name, :specialty)
  end
end
