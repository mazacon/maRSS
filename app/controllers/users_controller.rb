class UsersController < ApplicationController
  skip_before_action :authorized

  def new
    @user = User.new
  end

  def create
    if User.find_by(username: params['user']['username']) != nil
      redirect_to '/signup'
      return
    end
    @user = User.create(params.require(:user).permit(:username, :password))
    session[:user_id] = @user.id
    redirect_to '/feeds'
  end
end
