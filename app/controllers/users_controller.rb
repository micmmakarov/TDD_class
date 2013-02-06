class UsersController < ApplicationController

  def new
    @user = User.new
    @meeting = Meeting.find(params[:meeting_id])
  end

  def create
    @user = User.create(params[:user])
    redirect_to "/"
  end

end
