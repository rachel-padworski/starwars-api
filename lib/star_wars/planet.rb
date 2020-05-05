class StarWars::Planets

    attr_accessor :name , :climate , :terrain

    @@all = []
        
    def initialize(name , climate , terrain)
            self.name = name
            self.climate = climate
            self.terrain = terrain
            @@all << self
        end

        def self.all
            @@all
        end

end