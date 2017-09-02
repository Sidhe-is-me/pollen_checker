
# Our Cli Contoller

class PollenChecker::CLI

  def call
    pollen_zip_code
    list_pollen_level
    menu
  end

def pollen_zip_code
  puts "Enter the zip code you
  would like the pollen level checked for:"
  zipcode = gets.strip
  # zipcode must be only 5 numbers and a valid zipcode
  #this will take the zipcode and check it against the pollen.com website scraper
end

def list_pollen_level
  #this will scrape the pollen levle info from pollen.com
    pollen_level = 0
    puts "Today's pollen level is #{pollen_level}"
end


def menu
  puts "What would you like to do:
  1. Would you like to know the type of pollen(s)in the area?
  2. Check another zipcode
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
      call
    end
end
goodby
end


def goodby
  puts "Goodby! See you tomorrow for another check in!"
end

#class end
end
