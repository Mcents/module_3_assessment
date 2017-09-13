class SearchController < ApplicationController

  def index
    @stores = Store.store_info(params[:zip]) 
    @store_total = Store.store_total(params[:zip])
  end
  
end
