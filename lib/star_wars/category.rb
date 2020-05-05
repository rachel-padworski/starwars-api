class StarWars::Category

    @@all = []

    attr_accessor :url, :name

    def initialize(name, url)
        self.url = url
        self.name = name
        self.save
    end

    def save
        @@all << self
    end

    def self.all
        @@all
    end
end