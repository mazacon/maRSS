class UsersController < ApplicationController
  skip_before_action :authorized

  # prepare new user for rails form
  def new
    @user = User.new
  end

  # hit once user submits signup form
  def create
    # if the username entered already exists reload the page
    if User.find_by(username: params['user']['username']) != nil
      redirect_to '/signup'
    else # else create user, log user to current session, and go to the /feeds page
      @user = User.create(params.require(:user).permit(:username, :password))
      session[:user_id] = @user.id
      redirect_to '/feeds'
    end
  end
end
