class Api::V1::ItemsController < ApplicationController

  def index
    render json: Item.all
  end

  def show
    render json: Item.find(params[:id])
  end

  def create
    @item = Item.new(item_params)
    if @item.save
      render json: Item.all, status: 201
    end 
  end

  def destroy
    @item = Item.find(params[:id])
    if @item.destroy
      render json: @item, status: 201
    end
  end

  private

  def item_params
    params.require(:item).permit(:name, :description, :image_url)
  end
  
end
