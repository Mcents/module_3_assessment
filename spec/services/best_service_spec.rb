require 'rails_helper'

describe BestService do
  context "#store_info" do
    it "retrieves store info" do
      
      store = BestService.new.store_info(80231)

      expect(store.class).to eq(Hash)
    end
  end
end
