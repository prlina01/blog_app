class UsersController < ApplicationController
  def show
    @user = current_user
  end

  def toggle_subscription
    @user = current_user
    if @user.subscribed?
      @user.unsubscribed!
    else
      @user.subscribed!
    end
    redirect_to user_path(@user)
  end
end
