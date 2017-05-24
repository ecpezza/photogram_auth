class UsersController < ApplicationController

  def index
    @users = User.all

    render("users/index.html.erb")
  end

  def show
    @user = User.find(params[:id])

    render("users/show.html.erb")
  end

  def like
    @user = current_user

    render("users/like.html.erb")
  end

  # to help with adding username to devise sign up form
  def new
    @user = User.new
  end

  def create
    @user = User.new(params[:user])
    if @user.save
    else
      render 'new'
    end
  end

end
