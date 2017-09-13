class SearchController < ApplicationController

  def index
    @stores = Store.store_info(params[:zip]) 
    @store_total = Store.store_total(params[:zip])
    @zip = params[:zip]
  end
  
end
