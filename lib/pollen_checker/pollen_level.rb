class PollenChecker::Pollen_level
  attr_accessor :current_level, :history, :future, :top_allergens, :url

def self.today
  self.scrape_pollen_levels
end

def self.scrape_pollen_levels
  zipcode =[]
  # PollenChecker::Pollen_level_scraper.new("https://www.pollen.com/forecast/current/pollen/#{@@zipcode}")
  zipcode = self.new
  zipcode.current_level = "8"
  zipcode.history = "Yesterday  Pollen Level insert history"
  zipcode.future = "Tomorrow  Pollen level  insert forecast"
  zipcode.top_allergens = ['Ragweed','Chenopods','Nettel']
  zipcode.url = 'https://www.pollen.com/forecast/current/pollen/#{zipcode}'
  #this array needs to return the properties of pollen levels from the inputed zipcode
  zipcode

end



  #class end
end
