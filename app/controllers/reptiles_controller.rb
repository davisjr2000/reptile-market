class ReptilesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:index, :show]
  def index
    if params[:query].nil? || params[:query].empty?
      @reptiles = Reptile.all
    else
      @reptiles = Reptile.search_by_name_and_element(params[:query])
    end
  end

  def my
    @reptiles = Reptile.where(user: current_user)
  end

  def transactions
    @trans_rep = []
    @reptiles = Reptile.where(user: current_user)
    @reptiles = @reptiles.each do |poke|
      if !poke.old.nil? && poke.old != current_user.email
        @trans_rep << poke
      end
    end
  end

  def buy
    @reptile = Reptile.find(params[:reptile_id])
    @reptile.old = @reptile.user.email
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
    redirect_to root_path
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
    params.require(:reptile).permit(:name, :element, :user_id, :price, :description, :old, :level, :photo)
  end
end
