require 'rails_helper'

describe BestService do
  context "#store_info" do
    it "retrieves store info" do
      
      stores = BestService.new.store_info(80202)

      expect(stores.class).to eq(Hash)
      expect(stores).to have_key(:currentPage)
      expect(stores).to have_key(:total)
      expect(stores).to have_key(:totalPages)
      expect(stores).to have_key(:stores)
    end
  end
end
