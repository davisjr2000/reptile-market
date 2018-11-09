class ReptilesController < ApplicationController
  def index
    if [:query].empty?
      @reptiles = Reptile.all
    else
      @reptiles = Reptile.where("name ILIKE ?", "%#{params[:query]}%")
    end
  end

  def my
    @reptiles = Reptile.where(user: current_user)
  end

  def buy
    @reptile = Reptile.find(params[:reptile_id])
    @reptile.user = current_user
    @reptile.save
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
    reptile = Reptile.find(params[:id])
    reptile.destroy
    redirect_to root_path
  end

  def reptile_params
    params.require(:reptile).permit(:name, :element, :user_id, :price, :description, :level, :photo)
  end
end
