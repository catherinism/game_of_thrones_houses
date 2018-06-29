class GameOfThronesHouses::HOUSE

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
    binding.pry
    @@all << self
  end#end of initialize

  def self.all
    @all
  end


end
