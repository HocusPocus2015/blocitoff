class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def home
    render text: "<h1>Bloccitoff</h1><p>Welcome to your self destructing to-do list</p>"
  end
end
