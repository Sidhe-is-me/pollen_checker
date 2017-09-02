class PollenChecker::Pollen_level
  attr_accessor :current_level, :history, :future, :top_allergens, :url

def self.today
  zipcode = self.new
  zipcode.current_level = "8"
  zipcode.history = "Yesterday  Pollen Level insert history"
  # for some reason the irb does not like zipcode.future or forecast
  zipcode.future = "Tomorrow  Pollen level  insert forecast"
  zipcode.top_allergens = ['Ragweed','Chenopods','Nettel']
  zipcode.url = 'https://www.pollen.com/forecast/current/pollen/'
  [zipcode]
end





  #class end
end
