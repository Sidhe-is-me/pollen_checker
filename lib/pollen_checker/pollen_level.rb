class PollenChecker::Pollen_level
  attr_accessor :current_level, :history, :forecast, :top_allergens, :url

def self.today
  #this should return the pollen level with info for the
  #inputed zipcode for the day
  # puts "Enter the zip code you
  # would like the pollen level checked for:"
  zipcode = gets.strip
  # zipcode must be only 5 numbers and a valid zipcode
  #this will take the zipcode and check it against the pollen.com website scraper
  #each zipcode will be an object
  zip_1 = self.new
  zip_1.current_level = "8"
  # zip_1_history = "9"
  # zip_1.history = "Yesterday : Pollen Level : #{zip_1_history}"
  # zip_1_forecast ="11"
  # zip_1.forcast = "Tomorrow : Pollen level : #{zip_1_forecast}"
  zip_1.top_allergens = ['Ragweed','Chenopods','Nettel']
  zip_1.url = 'https://www.pollen.com/forecast/current/pollen/22081'


  zip_2 = self.new
  zip_2.current_level = "7.9"
  # zip_2_history ="3"
  # zip_2.history = "Yesterday : Pollen Level : #{zip_2_history}"
  # zip_2_forecast = "42"
  # zip_2.forcast = "Tomorrow : Pollen level : #{zip_2_forecast}"
  zip_2.top_allergens = ['Ragweed','Elm','Chenopods']
  zip_2.url = 'https://www.pollen.com/forecast/current/pollen/73301'

  [zip_1,zip_2]
end





  #class end
end
