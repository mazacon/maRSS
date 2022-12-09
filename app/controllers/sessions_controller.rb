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
      # maybe flash bad credentials here
      redirect_to '/'
    end
  end

  def destroy
    session.delete :user_id
    redirect_to '/'
  end
end
