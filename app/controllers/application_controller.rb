class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def index
    @imie = "Monika"
  end
end
