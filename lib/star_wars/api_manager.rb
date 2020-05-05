class StarWars::APIService

    BASE_URL = "https://swapi.co/api/"

    def self.get_categories
        response = RestCLient.get (BASE_URL)
        category_hash = JSON.parse(response)
        category_hash.each {|name, url|
            StarWars::Category.new(name, url)
        }
    end

    def self.get_items(cat)
        response = RestClient.get(cat.url)
        items_array = JSON.parse(response)['results']
        items_array.each {|item|

            if cat.name == 'people'
                StarWars::People.new(item["name"], item["birth_year"], item["films" ])
            else
                name = item["name"]
                climate = item["climate"]
                terrain = item["terrain"]
                StarWars::Planets.new(name , climate , terrain)
            end


        }

    end
end