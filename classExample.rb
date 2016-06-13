class Person
    # Automatically creates a getter method for age
    attr_reader :age
    # Automatically creates a getter and setter method for name
    attr_accessor :name
    @@num_people ||= 0

    def initialize (name, ageVar)
        # We assign name normally since any name is good
        @name = name
        # We assign age using our special age method so that values
        # over 120 can be ignored
        self.age = ageVar
        num_people
    end
    def to_s
        "#{name}#{age}"
    end
    def age= (new_age)
        # Default age is 27
        @age ||= 27 
        @age = new_age unless new_age > 120
    end
    def num_people
        @@num_people += 1
    end
    def self.num_people
        @@num_people
    end
end

# puts Person.num_people
person1 = Person.new("Thomas", 24)
puts person1.name
person1.name = "Andrew"
person1.age = 27
puts person1.name
puts person1.age
puts person1
puts Person.num_people
