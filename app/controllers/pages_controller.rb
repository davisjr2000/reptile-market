class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @reptiles = Reptile.where.not(user: current_user)
  end
end
