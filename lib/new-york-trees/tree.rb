
class NewYorkTrees::Tree

  attr_accessor :name, :scientific_name, :description, :bark, :twigs, :winter_buds, :leaves, :fruit, :distinguishing_features

  @@all = []

  self.make_from_index(t)
    # add class constructor here -- taking input from scraper.rb #make_trees method
  end

  def initialize(name=nil,scientific_name=nil,description=nil)
    @name = name
    @scientific_name = scientific_name
    @description = description
    @@all << self
  end

  

end
