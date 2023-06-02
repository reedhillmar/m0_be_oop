class Dino
    attr_reader :name, :period, :color, :diet
    def initialize(name, period, diet = "vegetarian")
        @name = name
        @period = period
        @color = "green"
        @diet = diet
    end
    
    def roar
        puts "ROAR! MY NAME IS #{name}"
    end
    
    def print_welcome
        puts "#{name}, welome to the #{period}!"
    end
end

dino1 = Dino.new("Greg", "Jurassic")
p dino1
dino1.roar
dino1.print_welcome