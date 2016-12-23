class NewYorkTrees::CLI
  def call
    NewYorkTrees::Scraper.new.new_from_index_page(t)
    puts "Welcome to the New York Forest tree collection!"
    start
  end

  def start
    puts "Enter a number to view a tree list: 1-10, 11-20, 21-30, 31-40 or 41-50"
    input = gets.strip.to_i

    print_trees(input)

    puts "Which tree would you like to learn more about? (enter a number)"
  end

  def print_trees(number_from_user)
    puts "---------------------Trees #{input} - #{input + 10}---------------------"
    puts ""
    array_pos = input - 1
    puts "#{array_pos}.  #{NewYorkTrees::Tree.all[array_pos].name} (#{NewYorkTrees::Tree.all[array_pos].scientific_name})"
    puts "#{array_pos + 1}.  #{NewYorkTrees::Tree.all[array_pos].name} (#{NewYorkTrees::Tree.all[array_pos].scientific_name})"
    puts "#{array_pos + 2}.  #{NewYorkTrees::Tree.all[array_pos].name} (#{NewYorkTrees::Tree.all[array_pos].scientific_name})"
    puts "#{array_pos + 3}.  #{NewYorkTrees::Tree.all[array_pos].name} (#{NewYorkTrees::Tree.all[array_pos].scientific_name})"
    puts "#{array_pos + 4}.  #{NewYorkTrees::Tree.all[array_pos].name} (#{NewYorkTrees::Tree.all[array_pos].scientific_name})"
    puts "#{array_pos + 5}.  #{NewYorkTrees::Tree.all[array_pos].name} (#{NewYorkTrees::Tree.all[array_pos].scientific_name})"
    puts "#{array_pos + 6}.  #{NewYorkTrees::Tree.all[array_pos].name} (#{NewYorkTrees::Tree.all[array_pos].scientific_name})"
    puts "#{array_pos + 7}.  #{NewYorkTrees::Tree.all[array_pos].name} (#{NewYorkTrees::Tree.all[array_pos].scientific_name})"
    puts "#{array_pos + 8}.  #{NewYorkTrees::Tree.all[array_pos].name} (#{NewYorkTrees::Tree.all[array_pos].scientific_name})"
    puts "#{array_pos + 9}.  #{NewYorkTrees::Tree.all[array_pos].name} (#{NewYorkTrees::Tree.all[array_pos].scientific_name})"     
  end

  def print_tree(id)
  end

end
