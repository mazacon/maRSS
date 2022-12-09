class HomeController < ApplicationController
  skip_before_action :authorized

  def index
    redirect_to '/feeds' if logged_in?
  end
end
