class LinkedList
    attr_accessor :head

    def initialize
        @head = nil
    end

    def append(data)
        new_node = Node.new(data)
            if @head == nil
                @head = new_node
            else
                current_node = @head
                while current_node.next_node != nil
                    current_node = current_node.next_node
                end
                current_node.next_node = new_node
            end  
    end 

    def count
        count = 0
        current_node = @head
            while current_node
                count += 1
                current_node = current_node.next_node
            end
        count
    end

    def to_string
        array_of_to_string = []
        current_node = @head      
            while current_node
            array_of_to_string << current_node.data
            current_node = current_node.next_node
            end      
        array_of_to_string.join(" ")
    end  
end