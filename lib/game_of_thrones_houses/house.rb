class GameOfThronesHouses::HOUSE

  def self.new_from_json(house)
    self.new(
    house["name"],
    house["region"],
    house["coatOfArms"]
    )

  end

end
