
# Our Cli Contoller

class PollenChecker::CLI
  attr_accessor  :pollen_level
  # @@zipcode = nil


  def call
    pollen_zip_code
    list_pollen_level
    menu
  end


def pollen_zip_code
  puts "Please input 5 digit zipcode"
   input = gets.strip
  #  @zipcode = input

end

def list_pollen_level
  #this will scrape the pollen levle info from pollen.com

    @pollen_level = PollenChecker::Pollen_level.today
    @pollen_level.each.with_index do |pollen_level,i|
      puts "#{i}.#{pollen_level.current_level} - #{pollen_level.history}- #{pollen_level.top_allergens}"
    end
    puts "Today's pollen level is {pollen_level.current_level}"
end


def menu
  puts "What would you like to do:
  1. Would you like to know the type of pollen(s)in the area?
  2. Check history
  3.Check Forecast
  or exit"
  input = nil
  while input != "exit"
    input = gets.strip.downcase
    case input
    when "1"
      #scrape 2nd layer of pollen.com for pollen types
        # @pollen_level = PollenChecker::Pollen_level.today
            puts  "The type(s) of pollen(s) in the area: {Pollen_level.zipcode.top_allergens}, don't forget
            to take your Quercitin!"
            call
    when "2"
      puts "The pollen level yesterday was {zipcode.history}"
    when "3"
      puts "The Pollen forecast is {zipcode.forecast}"
    else
      puts "Not sure what you would like, type:
      1. Would you like to know the type of pollen(s)in the area?
      2. Check history
      3.Check Forecast
      or exit"
    end
end
goodby
end




def goodby
  puts "Goodby! See you tomorrow for another check in!"
end

#class end
end
