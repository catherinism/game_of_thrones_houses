class GameOfThronesHouses::CLI
  #send and get data to/from user

  def call
    GameOfThronesHouses::API.house_list
    puts ""
    puts "M’athchomaroon!"
    puts ""
    puts "Here are some Game of Thrones houses:"
    house_list
    menu
    goodbye
  end

  def house_list
    GameOfThronesHouses::HOUSE.all.each.with_index(1) do |house, i|
      puts "#{i}. #{house.name}"
    end
      puts ""
      puts "What house do you want to see?"
  end

#if input in invalid, say something, return to menu
#if input is correct, show more info
#exit option
  def menu
    input = nil
    puts ""
    input = gets.strip.to_i
    house = GameOfThronesHouses::HOUSE.find(input)
    house_details(house)
    puts ""
    puts "Would you like to see another house? Enter Y or N"
    input == gets.strip.downcase
    if input == "y"
      menu
    else
      goodbye
  end
end

  def house_details(house)
    puts ""
    puts "#{house.name}"
    puts "#{house.region}"
    puts "#{house.coatOfArms}"
  end

  def error
    puts "Hodor. Hodor. Hodor."
  end

  def goodbye
    "Goodbye. And remember.... winter is coming."
  end
end
