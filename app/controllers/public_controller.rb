class PublicController < ApplicationController
  protect_from_forgery with: :exception

  def home
     @holdings = Holding.monthly_dataset.all
  end
end