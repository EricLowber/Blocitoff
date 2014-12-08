class UsersController < ApplicationController
  before_action :authenticate_user!, except: [:show]


  def create
  end

  def show
  end

  def update
  end

  def new
  end
end
