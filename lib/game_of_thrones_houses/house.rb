class GameOfThronesHouses::HOUSE
  attr_accessor :name, :region, :coatOfArms

@@all = []
  def self.new_from_json(house)
    self.new(
    house["name"],
    house["region"],
    house["coatOfArms"]
    )
  end

  def initialize(name=nil, region=nil, coatOfArms=nil)
    @name = name
    @region = region
    @coatOfArms = coatOfArms
    @@all << self
  end

  def self.all
    @all
  end

  def self.find(house)
    self.all[house-1]
  end

end
