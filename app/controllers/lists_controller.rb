class ListsController < ApplicationController
  before_action :authenticate_user!
  
  def index
    @lists = current_user.lists
  end
  
  def show
    @list = List.find(params[:id])
  end
  
  def new
    @list = List.new
  end
  
  def edit
    @lists = current_user.lists
  end
  
end