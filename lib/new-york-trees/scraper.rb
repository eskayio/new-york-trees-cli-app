class NewYorkTrees::Scraper
  def get_index

  end

  def trees_from_index
    #returns trees list as Nokogiri nodeset of tree html nodes
  end

  def make_trees
    #loops through return value from #trees_from_index and constructs a tree from each tree node using #make_from_index
  end

end
