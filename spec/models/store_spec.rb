require 'rails_helper'

describe "Store" do
  context "returns the store info for given zip" do
    it ".store_info" do
      
      stores = Store.store_info(80202)
      store = stores.first

      expect(stores.count).to eq(17)
      expect(store).to respond_to(:longName)
      expect(store).to respond_to(:city)
      expect(store).to respond_to(:distance)
    end
  end
end
