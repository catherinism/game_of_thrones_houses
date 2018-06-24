class GameOfThronesHouses::CLI
  #send and get data to/from user

  def call
    puts "Greetings!"
    puts ""
    menu
  end

  def menu
    puts "Please choose a number for your house"
    puts "1. House Targaryen of King's Landing"
    puts "2. House Tarly of Horn Hill"
    puts "3. House Tarth of Evenfall Hall"

    input = gets.strip.to_i
    if input == 1
      GameOfThronesHouses::API.house_list
      puts "House Targaryen of King's Landing"
    elsif input == 2
      puts "House Tarly of Horn Hill"
    elsif input == 3
      puts "House Tarth of Evenfall Hall"
    else
      puts "I don't know that choice"
      menu
  end
end
end
