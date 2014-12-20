class ListsController < ApplicationController
  def show
    @list = List.find(params[:id])
    @items = @list.items
   end

  def create
    @list = List.create(list_params)
    if @list.save
      flash[:notice] = "List was created"
       redirect_to @list
    else
      flash[:error] = "There was an error creating the list. Please try again."
      render :new
    end
  end

  def new
    @list = List.new
  end

  private

  def list_params
    params.require(:list).permit(:name)
  end
end




