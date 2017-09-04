class PollenChecker::Pollen_level
  attr_accessor :current_level, :history, :future, :top_allergens, :url

def self.today
  self.scrape_pollen_levels
  # new_zipcode =[]
  # #  PollenChecker::Pollen_level_scraper.new("https://www.pollen.com/forecast/current/pollen/#{@@zipcode}")
  #
  # new_zipcode << zipcode = self.new
  # zipcode.current_level = "8"
  # zipcode.history = "Pollen Level history"
  # zipcode.future = "Pollen level forecast"
  # zipcode.top_allergens = ['Ragweed','Chenopods','Nettel']
  # zipcode.url = 'https://www.pollen.com/forecast/current/pollen/#{zipcode}'
  # #this array needs to return the properties of pollen levels from the inputed zipcode
  # new_zipcode <<<<<<<< this code works but I need to build it into self.scrape below
end

 def self.scrape_pollen_levels
    zipcode =[]

    zipcode << self.scrape_new_zip

    zipcode
 end


def self.scrape_new_zip
  #I need to interpolate the users zipcode into the string of the url- Right now I have my zip
  doc = Nokogiri::HTML(open(("https://www.pollen.com/forecast/current/pollen/22031")))
  binding.pry

  title = doc.search("title").text #this teturns "Current Pollen Allergy Forecast for Fairfax, VA (22031) | Pollen.com"

end


  #class end
end
