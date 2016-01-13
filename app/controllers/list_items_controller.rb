class ListItemsController < ApplicationController
  def create
    @list = List.find(params[:list_id])
    @list_item = list_item.new(list_item_params)
    authorize @list_item
    if @list)item.save
      redirect_to @list_item, notice: "Item saved"
    else
      flash[:error] = "There was an error. Please try again"
      render :new
    end
  end
  
  def destroy
    @list = List.find(params[:list_id])
    @list_item = list_item.find(params[:id])
    authorize @list_item
    if @list_item.destroy
      flash[:notice] = "Item deleted"
    else
      flash[:error] = "There was an error. Please try again"
    end
  end
  
  def list_item_params
    params.require(:list_item).permit(:body)
  end
end
    