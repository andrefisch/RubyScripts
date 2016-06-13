class Node 
    attr_accessor :next, :data
    attr_reader :num_nodes

    # Initializer
    # mark i
    def initialize(data)
        self.data = data
    end

    # Adding a new element to a linked list
    # mark a
    def appendToTail(d)
        tail = Node.new(d)
        n = self

        while n.next != nil
            n = n.next
        end

        n.next = tail
    end

    # Print the list in order
    # mark p
    def print_list
        n = self
        puts n.data
        while n.next != nil
            n = n.next
            puts n.data
        end
    end

    # Delete a node from a linked list
    # mark d
    def delete_node(data)
        puts "Now deleting"
        n = self
        if data == self.data
            puts "The head is the problem"
            return self.next
        end
        while n.next != nil
            puts "Now looking at #{n.data}"
            if data == n.next.data
                n.next = n.next.next
                return self
            end
            n = n.next 
        end
    end

    # Remove duplicates from the list
    # mark u
    def remove_duplicates
        values = []
        n = self
        previous = nil
        while n != nil
            if values.include?(n.data)
                previous.next = n.next
            else
                values << n.data
                previous = n
            end
            n = n.next
        end
    end
                
    # How to print a node properly
    # mark s
    def to_s
        "Node has a value of #{self.data}"
    end

end

# Testing area
# mark z
=begin
puts "List before deleting anything"
head = Node.new(1)
head.appendToTail(2)
head.appendToTail(3)
head.appendToTail(4)
head.appendToTail(5)
head.appendToTail(5)
head.appendToTail(6)
head.appendToTail(6)
head.appendToTail(7)
head.appendToTail(7)
head.appendToTail(8)
head.appendToTail(9)
head.appendToTail(9)
head.appendToTail(10)


head.send(:print_list)

head.remove_duplicates

puts "List after duplicates have been removed"

head.method(:print_list).call
=end
