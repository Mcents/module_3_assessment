require 'rails_helper'

describe "Store" do
  context "returns the store info for given zip" do
    it ".store_info" do
      
      stores = Store.store_info(80202)
      store = stores.first

      expect(stores.count).to eq(10)
      expect(store).to respond_to(:long_name)
      expect(store).to respond_to(:city)
      expect(store).to respond_to(:distance)
      expect(store).to respond_to(:phone)
      expect(store).to respond_to(:store_type)
    end
  end
end
