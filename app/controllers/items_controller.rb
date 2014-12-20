class ItemsController < ApplicationController
 
  def new
    @item = Item.new
  end
 

  def create
    @list = List.find(params[:list_id])
    @item = Item.new(item_params)
    @item.list = @list

    if @item.save
       flash[:notice] = "Item was created."     
          redirect_to @list
    else 
       flash[:error] = "Error Creating Item. Please try again." 
          redirect_to @list
    end 
  end

private
 
   def item_params
     params.require(:item).permit(:body)
   end
 end

