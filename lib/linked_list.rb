class LinkedList
    attr_reader :head

    def initialize
        @head = nil
    end

    def append(data)
        @head = Node.new(data)
    end 

    def count
        if !@head = nil
            @head = 0
            @head += 1
        end
        @head
    end

    def to_string
        
    end

end