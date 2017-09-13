class BestService
  
  def initialize
    @conn ||= Faraday.new(url: "https://api.bestbuy.com") do |faraday|
      faraday.adapter Faraday.default_adapter
    end
  end

  def store_info(zip)
    store_json = @conn.get do |req|
      req.url "v1/stores(area(#{zip},25))"
      req.params['format'] = "json"
      req.params['show'] = 'longName,city,distance,phone,storeType,storeId'
      req.params['apiKey'] = "#{ENV['API_KEY']}"
    end 
    parse(store_json.body)[:stores]
  end

  def parse(stores)
    JSON.parse(stores, symbolize_names: true)
  end

end
