class NewYorkTrees::CLI
  def call
    NewYorkTrees::Scraper.new.make_trees
    start
  end

  def start
    puts "Welcome to the New York Forests Tree collection. Enter a number to view trees."
    input = gets.strip.to_i
    list_trees(input)
  end

  def list_trees(number_from_user)
  end

  def list_tree(id)
  end

end
