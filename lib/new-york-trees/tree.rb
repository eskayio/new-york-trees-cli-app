
class NewYorkTrees::Tree
  attr_accessor :name, :scientific_name, :url, :description, :bark, :twigs, :winter_buds, :leaves, :fruit, :distinguishing_features

  @@all = []

  def self.make_from_index_page(t)
    self.new(t.css("a").text,t.css("em").text,"http://bhort.bh.cornell.edu/tree/#{t.css('li a')[0].attr("href")}")
  end

  def initialize(name=nil,scientific_name=nil,url=nil)
    @name = name
    @scientific_name = scientific_name
    @url = url
    @@all << self
  end

  def self.all
    @@all
  end

  def doc
    @doc ||= Nokogiri::HTML(open(self.url))
  end

  def description
    @description ||= doc.
  end

  def bark
    @description ||= doc.
  end

  def twigs
    @description ||= doc.
  end

  def winter_buds
    @description ||= doc.
  end

  def leaves
    @description ||= doc.
  end

  def fruit
    @description ||= doc.
  end

  def distinguishing_features
    @description ||= doc.
  end
end
