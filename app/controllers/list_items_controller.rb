class ListItemsController < ApplicationController
  respond_to :html, :js
  def create
    @list = List.find(params[:list_id])
    @list_item = ListItem.new(list_item_params)
    @list_item.list = @list
    #authorize @list_item
    if @list_item.save
      redirect_to list_path(@list), notice: "Item saved."
    else
      flash[:error] = "There was an error. Please try again"
      render :new
    end
  end
  
  def destroy
    @list = List.find(params[:list_id])
    @list_item = ListItem.find(params[:id])
    #authorize @list_item
    if @list_item.destroy
      flash[:notice] = "Item deleted"
    else
      flash[:error] = "There was an error. Please try again"
    end
    
    respond_with(@list_item) do |format|
      format.html { redirect_to list_path(@list) }
    end
  end
  
  def list_item_params
    params.require(:list_item).permit(:body)
  end
end
    