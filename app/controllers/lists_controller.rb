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

  def create
    @list = List.new(list_params)
    @list.user = current_user
    if @list.save
      redirect_to list_path(@list), notice: "List saved"
    else
      flash[:error] = "There was an error. PLease try again."
      render :new
    end
  end

  def destroy
    @list = List.find(params[:id])
    if @list.destroy
      flash[:notice] = "Your list has been deleted."
    else
      flash[:error] = "There was an error. PLease try again."
      render :show
    end
  end

  def list_params
    params.require(:list).permit(:title)
  end
end
