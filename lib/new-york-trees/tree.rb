
class NewYorkTrees::Tree
  attr_accessor :name, :scientific_name, :url, :description, :bark, :twigs, :winter_buds, :leaves, :fruit, :distinguishing_features, :doc

  @@all = []

  def self.make_from_index_page(t)
    self.new(t.css("a").text,t.css("em").text.gsub(")","").strip,"http://bhort.bh.cornell.edu/tree/#{t.css("a").attr("href").text}")
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

  @node_count = 19 #this is the baseline node count (highest is 23)

  def description
    if doc.css("font")[3].text.gsub(/\r\n\\?/, " ").strip.length >= 40
      @description ||= doc.css("font")[3].text.gsub(/\r\n\\?/, " ").squeeze(" ").strip.capitalize
    elsif doc.css("font")[4].text.gsub(/\r\n\\?/, " ").strip.length >= 40
      @description ||= doc.css("font")[4].text.gsub(/\r\n\\?/, " ").squeeze(" ").strip.capitalize
    else
      @description ||= doc.css("font")[5].text.gsub(/\r\n\\?/, " ").squeeze(" ").strip.capitalize
    end
  end

#is there a way to create a generic test to then know which number to put in the brackets for each tree?
  def bark
    self.doc.css("font").each do |node|
      if node.text.gsub(/\r\n\\?/, " ").gsub("       "," ").include?("Bark -")
        @bark = node.text.gsub(/\r\n\\?/, " ").gsub("       "," ").gsub("Bark - ","").capitalize
      end
    end
    @bark
  end

  def twigs
    self.doc.css("font").each do |node|
      if node.text.gsub(/\r\n\\?/, " ").gsub("       "," ").include?("Twigs -")
        @twigs = node.text.gsub(/\r\n\\?/, " ").gsub("       "," ").gsub("Twigs - ","").capitalize
      end
    end
    @twigs
  end

  def winter_buds
    self.doc.css("font").each do |node|
      if node.text.gsub(/\r\n\\?/, " ").gsub("       "," ").include?("Winter buds -")
        @winter_buds = node.text.gsub(/\r\n\\?/, " ").gsub("       "," ").gsub("Winter buds - ","").capitalize
      end
    end
    @winter_buds
  end

  def leaves
    self.doc.css("font").each do |node|
      if node.text.gsub(/\r\n\\?/, " ").gsub("       "," ").include?("Leaves - ")
        @leaves = node.text.gsub(/\r\n\\?/, " ").gsub("       "," ").gsub("Leaves - ","").capitalize
      end
    end
    @leaves
  end

  def fruit
    @fruit ||= doc.search('//text()').map(&:text)[44].gsub(/\r\n\\?/, " ").gsub("       "," ").gsub(" - ","").capitalize
  end

  def distinguishing_features
    @distinguishing_features ||= doc.search('//text()').map(&:text)[47].gsub(/\r\n\\?/, " ").gsub("       "," ").gsub(" - ","").capitalize
  end
end
