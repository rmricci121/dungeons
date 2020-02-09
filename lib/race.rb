class Dungeons::Race

    attr_accessor :name, :speed, :ability_bonuses
   
    @@all = []

    def initialize(attributes)
        @name = name
        @speed = speed
        @ability_bonses = ability_bonuses
        attributes.each {|key, value| self.send(("#{key}="), value)}
        save
    end

    def save
        @@all << self 
    end

    def self.all
        @@all
    end

    
end

