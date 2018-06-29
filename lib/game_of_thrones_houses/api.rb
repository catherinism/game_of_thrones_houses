class GameOfThronesHouses::API
  #use restclient to open API
  #use json to parse
  #iterate through the data

  def self.house_list
    house_list = RestClient.get("https://anapioficeandfire.com/api/houses")
    @house_hash = JSON.parse(house_list)
    @house_hash.each do |house|
      #binding.pry
      GameOfThronesHouses::HOUSE.new_from_json(house)
    end
  end

end
