#require 'nokogiri'
#require 'pry'
#require 'open-uri'

class NewYorkTrees::Scraper
  def get_page
    Nokogiri::HTML(open("http://bhort.bh.cornell.edu/tree/list.htm"))
  end

  def scrape_trees_index
    self.get_page.css('li')
  end

  def make_trees
    scrape_trees_index.each do |t|
      NewYorkTrees::Tree.make_from_index_page(t)
    end
  end
end

#Scraper.new.scrape_trees_index
