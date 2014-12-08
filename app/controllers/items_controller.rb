class ItemsController < ApplicationController
 
  def new
    @item = Item.new
  end
 

  def create
    @list = List.find(params[:list_id])   
    @item = current_user.items.build( item_params )
    @item.list = @list

    if @item.save
       flash[:notice] = "Item was created."     
          redirect_to @list
    else 
       flash[:error] = "Error Creating Item. Please try again." 
          redirect_to @item   
    end 
  end

private
 
   def item_params
     params.require(:item).permit(:body)
   end
 end

