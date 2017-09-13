class SearchController < ApplicationController

  def index
    @stores = Store.store_info(params[:zip]) 
  end
  
end
