class Person
    attr_accessor :first_name, :last_name
    @@people = []

    def initialize (first, last)
        self.first_name = first
        self.last_name = last
        @@people << self
    end
    def self.search (last)
        @@people.select { |person| person.last_name == last }
    end
    def to_s
        "#{first_name} #{last_name}"
    end
end

person1 = Person.new("Andrew", "Fischl")

person2 = Person.new("Will", "Spear")

person3 = Person.new("Thomas", "Fischl")

puts Person.search("Fischl")
