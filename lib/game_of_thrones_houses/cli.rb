class GameOfThronesHouses::CLI

  def call
    GameOfThronesHouses::API.house_list
    puts ""
    puts "M’athchomaroon!"
    menu
  end

  def house_list
    puts ""
    puts "Select the Game of Thrones house that you would like to see."
    puts ""
    GameOfThronesHouses::HOUSE.all.each.with_index(1) do |house, i|
      puts "#{i}. #{house.name}"
    end
    puts ""
  end

  def menu
    house_list
      input = nil
      until input == "exit"
      input = gets.strip.downcase
      if input.to_i > 0 && input.to_i < 11
      house = GameOfThronesHouses::HOUSE.find(input.to_i)
      house_details(house)
      puts "Enter another number, type 'LIST' to see the list of houses again, or type 'EXIT' to leave."
      puts ""
    elsif input == "list"
    house_list
  elsif input == "exit"
    goodbye
    else
      error
    end
  end
end

  def house_details(house)
    puts ""
    puts "Name: #{house.name}"
    puts "Region: #{house.region}"
    puts "Coat of Arms: #{house.coatOfArms}"
    puts ""
  end

  def sub_menu
    puts "Enter 'LIST' to see the list of houses, or type 'EXIT' to leave."
    puts ""
  end

  def error
    puts ""
    puts "Hodor. Hodor. Hodor. That is an invalid input."
    house_list
  end

  def goodbye
    puts ""
    puts "Goodbye. Winter is coming."
  end
end
