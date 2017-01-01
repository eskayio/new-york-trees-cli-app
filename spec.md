# Specifications for the CLI Assessment

Specs:
- [X] Have a CLI for interfacing with the application
In the /bin folder the user executes the following command:
  $ ruby new-york-trees
This causes the a new CLI object to be created and then calls the #call method:
  NewYorkTrees::CLI.new.call
When the #call method is executed the Tree.all array is filled with Trees by the scraper.rb #make_trees method which collaborates with the #make_from_index_page Class method. The Tree.rb #call and #start methods then initiate the command line interface, calling the #print_trees and #print_tree methods based on user input.

- [X] Pull data from an external source
The scraper.rb #get_page method uses OpenURI and Nokogiri to create an XML Nodeset of the index page containing high level tree details and the deep link to each tree. The #scrape_trees method then pulls in each tree and makes it available to the scraper.rb #make_trees method.

- [X] Implement both list and detail views
Each attribute of a given tree is populated by Nokogiri calls within Tree.rb. Trees are initialized with their common name, scientific name, and url. These values are used by the #print_trees method to present the user with a 10-based numbered list of trees, given user input. Each attribute of each tree is populated through Nokogiri calls contained within each attributes corresponding method in Tree.rb and are then rendered to the user when requested through Cli.rb's #print_trees and #print_tree methods.
