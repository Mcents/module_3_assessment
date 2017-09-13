require 'rails_helper'


describe "all items endpoint" do
  context "/api/v1/items" do
    it "retrieves all items" do
      item = Item.create(name: "Robot1", description: "cool robot", image_url: "google.com/images")
      item2 = Item.create(name: "Robot2", description: "cool robot also", image_url: "google.com/images")

      get "/api/v1/items"

      items = JSON.parse(response.body)

      expect(response).to be_success
      expect(items.count).to eq(2)
    end
  end
end
