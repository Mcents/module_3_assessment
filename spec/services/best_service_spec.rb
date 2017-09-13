require 'rails_helper'

describe BestService do
  context "#store_info" do
    it "retrieves store info" do
      
      stores = BestService.new.store_info(80231)
      store = stores.first

      expect(stores.class).to eq(Array)
      expect(store).to have_key(:longName)
      expect(store).to have_key(:city)
      expect(store).to have_key(:distance)
      expect(store).to have_key(:phone)
      expect(store).to have_key(:storeType)
    end
  end
end
