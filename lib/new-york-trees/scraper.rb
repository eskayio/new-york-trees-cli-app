
class NewYorkTrees::Scraper
  def get_page
    Nokogiri::HTML(open("http://bhort.bh.cornell.edu/tree/list.htm"))
  end

  def scrape_trees_index
    self.get_page.css('li')
  end

  def make_trees
    #loops through return value from #trees_from_index and constructs a tree from each tree node using #make_from_index

  end

end
