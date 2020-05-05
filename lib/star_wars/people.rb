class StarWars::People

    attr_accessor :name, :birth_year, :films

    @@all = []

    def initialize(name, birth_year, films)
        self.name = name
        self.birth_year = birth_year
        self.films = films
        @@all << self
    end

    def self.all
        @@all
    end

end