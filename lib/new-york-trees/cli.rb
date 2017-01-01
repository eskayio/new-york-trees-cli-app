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

    puts "Would you like to learn about another tree? (Y/N)"
    answer = gets.strip

    if answer == "Y" || answer == "y"
      start
    end
  end

  def print_trees(number_from_user)
    puts "--------------------- Trees #{number_from_user} - #{number_from_user + 9} ---------------------"
    puts ""

    @array_pos = number_from_user - 1

    puts "#{number_from_user}.  #{NewYorkTrees::Tree.all[@array_pos].name} (#{NewYorkTrees::Tree.all[@array_pos].scientific_name})"
    puts "#{number_from_user + 1}.  #{NewYorkTrees::Tree.all[@array_pos + 1].name} (#{NewYorkTrees::Tree.all[@array_pos + 1].scientific_name})"
    puts "#{number_from_user + 2}.  #{NewYorkTrees::Tree.all[@array_pos + 2].name} (#{NewYorkTrees::Tree.all[@array_pos + 2].scientific_name})"
    puts "#{number_from_user + 3}.  #{NewYorkTrees::Tree.all[@array_pos + 3].name} (#{NewYorkTrees::Tree.all[@array_pos + 3].scientific_name})"
    puts "#{number_from_user + 4}.  #{NewYorkTrees::Tree.all[@array_pos + 4].name} (#{NewYorkTrees::Tree.all[@array_pos + 4].scientific_name})"
    puts "#{number_from_user + 5}.  #{NewYorkTrees::Tree.all[@array_pos + 5].name} (#{NewYorkTrees::Tree.all[@array_pos + 5].scientific_name})"
    puts "#{number_from_user + 6}.  #{NewYorkTrees::Tree.all[@array_pos + 6].name} (#{NewYorkTrees::Tree.all[@array_pos + 6].scientific_name})"
    puts "#{number_from_user + 7}.  #{NewYorkTrees::Tree.all[@array_pos + 7].name} (#{NewYorkTrees::Tree.all[@array_pos + 7].scientific_name})"
    puts "#{number_from_user + 8}.  #{NewYorkTrees::Tree.all[@array_pos + 8].name} (#{NewYorkTrees::Tree.all[@array_pos + 8].scientific_name})"
    puts "#{number_from_user + 9}.  #{NewYorkTrees::Tree.all[@array_pos + 9].name} (#{NewYorkTrees::Tree.all[@array_pos + 9].scientific_name})"
    puts ""
    puts "Enter the number of the tree you'd like to learn more about: "
    id = gets.strip.to_i
    print_tree(id - 1)
  end

  #needs proper formatting and wrapping of values.
  def print_tree(id)
    puts "--------------------- Tree Record: #{NewYorkTrees::Tree.all[id].name} ---------------------"
    puts ""
    puts "Common Name:                #{NewYorkTrees::Tree.all[id].name.ljust(25)}"
    puts "Scientific Name:            #{NewYorkTrees::Tree.all[id].scientific_name.ljust(25)}"
    puts "Bark:                       #{NewYorkTrees::Tree.all[id].bark.ljust(25)}"
    puts "Twigs:                      #{NewYorkTrees::Tree.all[id].twigs.ljust(25)}"
    puts "Winter Buds:                #{NewYorkTrees::Tree.all[id].winter_buds.ljust(25)}"
    puts "Leaves:                     #{NewYorkTrees::Tree.all[id].leaves.ljust(25)}"
    puts "Fruit:                      #{NewYorkTrees::Tree.all[id].fruit.ljust(25)}"
    puts "Distinguishing Features:    #{NewYorkTrees::Tree.all[id].distinguishing_features.ljust(25)}"
    puts ""
    puts "---------------------Description---------------------"

    puts "#{NewYorkTrees::Tree.all[id].description}"
    puts ""
  end

end
