# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string

class Unicorn
    def initialize(name, color = "silver")
        @name = name
        @color = color
    end

    def say
        puts "*~*#{@name}*~*"
    end
end

unicorn1 = Unicorn.new("Rainbow Sparkles")
p unicorn1
unicorn1.say

unicorn2 = Unicorn.new("Ice Cream", "black")
p unicorn2
unicorn2.say

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false

class Vampire
    def initialize(name, pet = "bat")
        @name = name
        @thirsty = true
        @pet = pet
    end

    def drink
        @thirsty = false
    end
end

vamp1 = Vampire.new("Fenton")
p vamp1
vamp1.drink
p vamp1

vamp2 = Vampire.new("Count Chocula", "Procupine")
p vamp2

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry

class Dragon
    def initialize(name, rider, color)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = true
        @fed = 0
    end

    def eat
        @fed = @fed.next
        if @fed >= 4
            @is_hungry = false
        end
    end
end

dragon1 = Dragon.new("Spyro", "Sparx", "Purple")
p dragon1
dragon1.eat
p dragon1
dragon1.eat
p dragon1
dragon1.eat
p dragon1
dragon1.eat
p dragon1

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    def initialize(name, disposition)
        @name = name
        @disposition = disposition
        @age = 0
        @is_adult = false
        @is_old = false
        @has_ring = false
        if @name == "Frodo"
            @has_ring = true
        end
    end

    def celebrate_birthday
        @age = @age.next
        if @age >= 101
            @is_old = true
        elsif @age >= 33
            @is_adult = true
        end
        # I feel like there should be a cleaner solution here. This works, but it feels clunky and if there were ever a time that @age got changed manually from < 33 to >= 101 it would create an inaccuracy where @is_adult = false.
    end
end

hobbit1 = Hobbit.new("Honey", "Sweet")
p hobbit1
32.times {hobbit1.celebrate_birthday}
p hobbit1
hobbit1.celebrate_birthday
p hobbit1
67.times {hobbit1.celebrate_birthday}
p hobbit1
hobbit1.celebrate_birthday
p hobbit1

hobbit2 = Hobbit.new("Frodo", "Reluctant")
p hobbit2