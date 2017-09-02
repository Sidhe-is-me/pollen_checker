
# Our Cli Contoller

class PollenChecker::CLI
  attr_accessor  :pollen
  @@zipcode = nil


  def call
    pollen_zip_code
    list_pollen_level
    menu
  end

  def self.zipcode
    @@zipcode = gets.strip
  end

def pollen_zip_code
  puts "Please input 5 digit zipcode"
  # zipcode = gets.strip
   @pollen = PollenChecker::Pollen_level.today
end

def list_pollen_level
  #this will scrape the pollen levle info from pollen.com
  @pollen
    pollen_level = 0
    puts "Today's pollen level is #{pollen_level}"
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
            pollen_type = "ragweed"
            puts  "The type of pollen in the area is #{pollen_type}, don't forget
            to take your Quercitin!"
            call
    when "2"
      puts "The pollen level yesterday was X"
    when "3"
      puts "The Pollen forecast is x"
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

# def menu
#   puts "What would you like to do:
#   1. Would you like to know the type of pollen(s)in the area?
#   2. Check another zipcode
#   or exit"
#   input = nil
#   while input != "exit"
#     input = gets.strip.downcase
#     case input
#     when "1"
#       #scrape 2nd layer of pollen.com for pollen types
#             pollen_type = "ragweed"
#             puts  "The type of pollen in the area is #{pollen_type}, don't forget
#             to take your Quercitin!"
#             call
#     when "2"
#       call
#     else
#       puts "Not sure what you would like, type
#       1. for the type of pollen(s)in the area
#       2. To check another zipcode
#       or exit"
#     end
# end
# goodby
# end


def goodby
  puts "Goodby! See you tomorrow for another check in!"
end

#class end
end
