class PublicController < ApplicationController
  protect_from_forgery with: :exception

  def home

  end
end