class NewYorkTrees::Scraper
  def get_index
    Nokogiri::HTML(open("http://bhort.bh.cornell.edu/tree/list.htm"))
  end

  def trees_from_index
    #returns trees list as Nokogiri nodeset of tree html nodes

  end

  def make_trees
    #loops through return value from #trees_from_index and constructs a tree from each tree node using #make_from_index
  end

end
