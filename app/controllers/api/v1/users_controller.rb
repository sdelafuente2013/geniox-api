class Api::V1::UsersController < ApplicationController
  def index
    @users = User.all
    @books = Book.all

    render :index
  end
end
