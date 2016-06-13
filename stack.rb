require './linkedList'

class Stack
    attr_accessor :top
    
    # Push a value to the stack
    # mark a
    def push(data)
        node = nil
        if data.is_a?(Node)
            node = data
        else
            node = Node.new(data)
        end
        node.next = @top
        @top = node
    end

    # Pop a value from the stack
    # mark b
    def pop
        if @top != nil
            t = @top
            @top = t.next
            t
        end
    end

    # Peek at the top of the stack
    # mark c
    def peek
        if @top != nil
            @top
        end
    end

    # Sort the stack using only another stack
    # mark s
    def sort
        helper = Stack.new
        while self.top != nil
            temp = self.pop
            while helper.top != nil && helper.peek.data > temp.data
                self.push(helper.pop)
            end
            helper.push(temp)
        end
        self.top = helper.top
    end

end

# Testing area
# mark z
# =begin
stack = Stack.new
stack.push(8)
stack.push(9)
stack.push(1)
stack.push(7)
stack.push(3)
stack.push(6)
stack.push(5)
stack.push(4)
stack.push(2)

stack.sort

stack.top.print_list
# =end
