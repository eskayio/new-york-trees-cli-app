class NewYorkTrees::CLI
  def call
    NewYorkTrees::Scraper.new.make_trees
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
    puts "--------------------- Trees #{number_from_user} - #{number_from_user + 9} ---------------------"
    puts ""

    @array_pos = number_from_user - 1

    puts "#{@array_pos}.  #{NewYorkTrees::Tree.all[@array_pos].name} (#{NewYorkTrees::Tree.all[@array_pos].scientific_name})"
    puts "#{@array_pos + 1}.  #{NewYorkTrees::Tree.all[@array_pos].name} (#{NewYorkTrees::Tree.all[@array_pos].scientific_name})"
    puts "#{@array_pos + 2}.  #{NewYorkTrees::Tree.all[@array_pos].name} (#{NewYorkTrees::Tree.all[@array_pos].scientific_name})"
    puts "#{@array_pos + 3}.  #{NewYorkTrees::Tree.all[@array_pos].name} (#{NewYorkTrees::Tree.all[@array_pos].scientific_name})"
    puts "#{@array_pos + 4}.  #{NewYorkTrees::Tree.all[@array_pos].name} (#{NewYorkTrees::Tree.all[@array_pos].scientific_name})"
    puts "#{@array_pos + 5}.  #{NewYorkTrees::Tree.all[@array_pos].name} (#{NewYorkTrees::Tree.all[@array_pos].scientific_name})"
    puts "#{@array_pos + 6}.  #{NewYorkTrees::Tree.all[@array_pos].name} (#{NewYorkTrees::Tree.all[@array_pos].scientific_name})"
    puts "#{@array_pos + 7}.  #{NewYorkTrees::Tree.all[@array_pos].name} (#{NewYorkTrees::Tree.all[@array_pos].scientific_name})"
    puts "#{@array_pos + 8}.  #{NewYorkTrees::Tree.all[@array_pos].name} (#{NewYorkTrees::Tree.all[@array_pos].scientific_name})"
    puts "#{@array_pos + 9}.  #{NewYorkTrees::Tree.all[@array_pos].name} (#{NewYorkTrees::Tree.all[@array_pos].scientific_name})"

    puts "Enter the number of the tree you'd like to learn more about: "
    id = gets.strip.to_int
    print_tree(id - 1)
  end

  def print_tree(id)
    puts "---------------------Trees #{NewYorkTrees::Tree.all[@array_pos].name} - #{input + 9}---------------------"
    puts ""
    puts "Common Name:                #{NewYorkTrees::Tree.all[@array_pos].name}"
    puts "Scientific Name:            #{NewYorkTrees::Tree.all[@array_pos].scientific_name}"
    puts "Bark:                       #{NewYorkTrees::Tree.all[@array_pos].bark}"
    puts "Twigs:                      #{NewYorkTrees::Tree.all[@array_pos].twigs}"
    puts "Winter Buds:                #{NewYorkTrees::Tree.all[@array_pos].winter_buds}"
    puts "Leaves:                     #{NewYorkTrees::Tree.all[@array_pos].leaves}"
    puts "Fruit:                      #{NewYorkTrees::Tree.all[@array_pos].fruit}"
    puts "Distinguishing Features:    #{NewYorkTrees::Tree.all[@array_pos].distinguishing_features}"

    puts "---------------------Description---------------------"
    puts "Description:  #{NewYorkTrees::Tree.all[@array_pos].description}"
  end

end
