
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
    @description ||= "#{doc.xpath("/html/body/table[2]/tbody/tr/td[1]/font/font/strong").text} + #{doc.xpath("/html/body/table[2]/tbody/tr/td[1]/font/text()").text}"
  end

  def bark
    @bark ||= doc.xpath("/html/body/table[3]/tbody/tr/td/font/text()").capitalize
  end

  def twigs
    @twigs ||= doc.xpath("/html/body/table[3]/tbody/tr/td/p[1]/font/text()").capitalize
  end

  def winter_buds
    @winter_buds ||= "winter buds go here"
  end

  def leaves
    @leaves ||= "leaves go here"
  end

  def fruit
    @fruit ||= "fruit goes here"
  end

  def distinguishing_features
    @distinguishing_features ||= "ditinguishing stuff goes here"
  end
end
