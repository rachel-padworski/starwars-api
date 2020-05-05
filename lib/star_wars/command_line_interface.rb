class StarWars::class 

    def self.run
        puts "Welcome to Star Wars CLI!"
        StarWars::APIService.get_categories
        menu
    end

    def self.menu
        puts "Please select from a category below:"
        StarWars::Category.all.each.with_index(1) {|cat, i|
            puts "#{i}. #{cat.name.capitalize}"
        }
        input = gets.chomp.to_i
        category = StarWars::Category.all[input-1]
        StarWars::APIService/get_items(category)
        items = Module.const_get("StarWars::#{category.name.capitalize}").all
        #binding.pry

        items.each do |item|
            puts item.name
        end
    end
end
    
