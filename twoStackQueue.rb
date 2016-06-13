require './linkedList'
require './stack'

class TwoStackQueue
    # Inbox and Outbox are both stacks
    attr_accessor :inbox, :outbox

    # Initializer just creates two new stacks
    # mark i
    def initialize
        @inbox = Stack.new
        @outbox = Stack.new
    end

    # Add an element to the TwoStackQueue
    # mark e
    def enqueue(data)
        inbox.push(data)
    end

    # Remove an element from the TwoStackQueue
    # mark d
    def dequeue
        if @outbox.top == nil
            while @inbox.top != nil
                @outbox.push(@inbox.pop)
            end
        end
        @outbox.pop
    end

end

# Testing Area
# mark z
tsq = TwoStackQueue.new
tsq.enqueue(1)
tsq.enqueue(2)
tsq.enqueue(3)
tsq.enqueue(4)
tsq.enqueue(5)
tsq.enqueue(6)
tsq.enqueue(7)

puts tsq.dequeue
