class Store

  attr_reader :long_name, :city, :distance, :phone, :store_type
  
  def initialize(store_atts={})
    @long_name = store_atts[:longName]
    @city = store_atts[:city]
    @distance = store_atts[:distance]
    @phone = store_atts[:phone]
    @store_type = store_atts[:storeType]
  end

  def self.store_total(zip)
    BestService.new.store_info(zip)[:total]
  end

  def self.store_info(zip)
    BestService.new.store_info(zip)[:stores].map do |raw|
      Store.new(raw)
    end
  end
end
