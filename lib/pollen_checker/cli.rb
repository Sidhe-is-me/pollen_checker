
# Our Cli Contoller

class PollenChecker::CLI

  def call
    pollen_zip_code
    list_pollen_level
    more_info
  end

def pollen_zip_code
  puts "Enter the zip code you
   would like the pollen level checked for:"
  zipcode = gets.strip
  # zipcode must be only 5 numbers
  puts zipcode
end


  def list_pollen_level
    pollen_level = 0
    puts "Today's pollen level is #{pollen_level}"
  end

def more_info
  puts "Would you like to know the type of pollen
  in the area? (y/n)"
  #if yes then scrape for the pollen types if no then
  #ask if they want to input a new zip or exit.
end


end
