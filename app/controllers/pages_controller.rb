class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @reptiles = Reptile.all
  end
end
