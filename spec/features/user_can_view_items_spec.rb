require 'rails_helper'

describe "Items Index" do
  context "/items" do
    it "returns all the times" do
      item = Item.create(name: "robot1", description: "cool robot", image_url: "google.com/images")
      
      visit "/"

      expect(page).to have_content("robot1")
    end
  end
end
