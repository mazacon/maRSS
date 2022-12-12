class SessionsController < ApplicationController
  skip_before_action :authorized, only: :create

  # will hit this method after entering login info
  def create
    # look for user in db
    @user = User.find_by(username: params[:username])

    # if found create a new session for them else refresh page
    if @user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to '/feeds'
    else
      # TODO: flash invalid credentials
      redirect_to root_path
    end
  end

  def destroy # delete user_id from current session and redirect to home
    session.delete :user_id
    redirect_to root_path
  end
end
