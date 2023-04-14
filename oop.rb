# Write a class called Unicorn
# it should have a dynamic name attribute
# it should have a color attribute, that is silver by default
# it should have a method called "say" that returns whatever string is passed in, with "*~*" at the beginning and end of the string
class Unicorn
    attr_reader :name, :color
    def initialize(name, color = "silver")
        @name = name
        @color = color
    end

    def say(speech)
        "*~*#{speech}*~*"
    end
end
corn1 = Unicorn.new("Zippy")
p corn1.name
p corn1.say("I lost my fluffers!")
#
puts "==========================================="

#  Write a class called Vampire
#  it should have a dynamic name attribute
#  it should have a pet attribute, that is a bat, by default BUT it could be dynamic if info is passed in initially
#  it should have a thirsty attribute, that is true by default
#  it should have a drink method. When called, the thirsty attribute changes to false
class Vampire
    attr_reader :name, :thirsty, :pet
    def initialize(name, pet = "bat")
        @name = name
        @thirsty = true
        @pet = pet
    end

    def drink
        @thirsty = false
    end
end

vamp1 = Vampire.new("Miles")
p vamp1
vamp1.drink
p vamp1
#
puts "==========================================="

#  Write a Dragon class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic rider attribute (string)
#  it should have a dynamic color attribute (string)
#  it should have a is_hungry attribute that is true by default
#  it should have a eat method. If the dragon eats 4 times, it is no longer hungry
class Dragon
    attr_reader :name, :rider, :color, :is_hungry
    def initialize(name, rider, color, is_hungry = true)
        @name = name
        @rider = rider
        @color = color
        @is_hungry = is_hungry
        @meals = 0
    end

    def eat
        @meals += 1
        if @meals >= 4
            @is_hungry = false
        end
    end
end

dragon1 = Dragon.new("Puff", "Tim", "blue")
p dragon1
dragon1.eat
dragon1.eat
dragon1.eat
p dragon1
dragon1.eat
p dragon1
#
puts "==========================================="

#  Write a Hobbit class
#  it should have a dynamic name attribute (string)
#  it should have a dynamic disposition attribute (string)
#  it should have an age attribute that defaults to 0
#  it should have a celebrate_birthday method. When called, the age increases by 1
#  it should have an is_adult attribute (boolean) that is false by default. once a Hobbit is 33, it should be an adult
#  it should have an is_old attribute that defaults to false. once a Hobbit is 101, it is old.
#  it should have a has_ring attribute. If the Hobbit's name is "Frodo", true, if not, false.

class Hobbit
    attr_reader :name, :disposition, :age, :is_adult, :is_old, :has_ring
    def initialize(name, disposition, age = 0)
        @name = name
        @disposition = disposition
        @age = age
        @is_adult = false
        @is_old = false
        @has_ring = false
    end

    def celebrate_birthday
        @age += 1

        if @age >= 33
            @is_adult = true
        end

        if @age >= 101
            @is_old = true
        end
    end

    def has_ring
        if name == "Frodo"
            @has_ring = true
        end
    end
end

hobbit1 = Hobbit.new("Samwise", "Loyal")
hobbit1.has_ring
p hobbit1

hobbit2 = Hobbit.new("Frodo", "Brave", 33)
hobbit2.celebrate_birthday
hobbit2.has_ring
p hobbit2

hobbit1.celebrate_birthday
p hobbit1
33.times do
    hobbit1.celebrate_birthday
end
p hobbit1
80.times do
    hobbit1.celebrate_birthday
end
p hobbit1
