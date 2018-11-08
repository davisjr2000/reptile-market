class ReptilesController < ApplicationController
  def index
  end

  def show
    @reptile = Reptile.find(params[:id])
  end

  def new
    @reptile = Reptile.new
    @reptile.user = current_user
  end

  def create
    @reptile = Reptile.new(reptile_params)
    @reptile.user = current_user
    if @reptile.save
      redirect_to @reptile
    else
      render :new
    end
  end

  def edit
    @reptile = Reptile.find(params[:id])
  end

  def update
    @reptile = Reptile.find(params[:id])
    @reptile.update(reptile_params)
    redirect_to reptile_path(@reptile)
  end

  def destroy
  end

  def reptile_params
    params.require(:reptile).permit(:name, :species, :user_id, :price, :level, :description, :photo)
  end
end
