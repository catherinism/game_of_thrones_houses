class GameOfThronesHouses::CLI
  #send and get data to/from user

  def call
    GameOfThronesHouses::API.house_list
    puts "Greetings!"
    puts ""
    house_list
    menu
  end

  def house_list
    GameOfThronesHouses::HOUSE.all.each.with_index(1) do |house, i|
      puts "#{i}. #{house.name}"
    end
    end

#if input in invalid, say something, return to menu
#if input is correct, show more info
#exit option
  def menu
    puts "What house do you want to see?"
    puts ""
    input = gets.strip.to_i
    house = GameOfThronesHouses::HOUSE.find(input)
    house_details(house)
  end

  def house_details(house)
    puts ""
    puts "#{house.name}"
    puts "#{house.region}"
    puts "#{house.coatOfArms}"
  end
end
