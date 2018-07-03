class GameOfThronesHouses::API

  def self.house_list
    house_list = RestClient.get("https://anapioficeandfire.com/api/houses")
    @house_hash = JSON.parse(house_list)
    @house_hash.each do |house|
      GameOfThronesHouses::HOUSE.new_from_json(house)
    end
  end

end
