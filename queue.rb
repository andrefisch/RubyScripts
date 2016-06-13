require './linkedList'

class Queue
    # All elements in the Queue are nodes
    attr_accessor :front, :back

    # Add an item to the queue
    # mark e
    def enqueue(data)
        if @front == nil
            @back = Node.new(data)
            @front = @back
        else
            @back.next = Node.new(data)
            @back = @back.next
        end
    end

    # Remove an item from the queue
    # mark d
    def dequeue
        if @front != nil
            to_return = @front
            @front = @front.next
            to_return
        end
    end

    # Print the queue in order
    # mark p
    def print_queue
        puts "Queue currently looks like this"
        n = @front
        puts "Front"
        while n != @back
            puts n.data
            n = n.next
        end
        puts @back.data
        puts "Back"
    end

end

# Testing area
# mark z
=begin
q = Queue.new
q.enqueue(1)
q.enqueue(2)
q.enqueue(3)
q.enqueue(4)
q.enqueue(5)
q.enqueue(6)
q.enqueue(7)

q.print_queue

q.dequeue
q.enqueue 1

q.print_queue
=end
