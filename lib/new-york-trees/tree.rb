
class NewYorkTrees::Tree
  attr_accessor :name, :scientific_name, :description, :bark, :twigs, :winter_buds, :leaves, :fruit, :distinguishing_features

  @@all = []

  def self.make_from_index_page(t)
    self.new(t.css("a").text,t.css("em").text)
  end

  def initialize(name=nil,scientific_name=nil)
    @name = name
    @scientific_name = scientific_name
    @@all << self
  end
end
