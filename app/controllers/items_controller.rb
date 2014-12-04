class ItemsController < ApplicationController
 
  def new
  end

  def show
    @item = Item.find(params[:id])
  end


  def index
  end  




  def create
    @item = Item.new(item_params)
    @item.save
    redirect_to @item, notice: 'Your new ITEM was saved.'
  end

private
 
   def item_params
     params.require(:item).permit(:body)
   end
 end

