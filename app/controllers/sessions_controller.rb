class SessionsController < ApplicationController
  def create
  user = User.find_by_email(params[:email])
  if user && user.authenticate(params[:password])
    session[:user_id] = user.id
    redirect_to root_url, notice: "Logged into Costanza!"
  else
    flash.now.alert = "Email or password is Bogus. Try again"

    def destroy
  session[:user_id] = nil
  redirect_to root_url, notice: "Logged out!"
  end
end
