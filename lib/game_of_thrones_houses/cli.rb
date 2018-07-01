class GameOfThronesHouses::CLI
  #send and get data to/from user

  def call
    GameOfThronesHouses::API.house_list
    puts "Greetings!"
    puts ""
    menu
  end


  def menu
    puts "What house do you want to see?"
    puts ""
    input = gets.strip.to_i
  
      menu
  end
end
end
