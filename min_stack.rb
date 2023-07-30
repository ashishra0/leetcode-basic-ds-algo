class MinStack

    attr_accessor :stack, :min_stack
    
    def initialize
      @stack = Array.new
      @min_stack = Array.new
    end

=begin
    :type val: Integer
    :rtype: Void
=end
    def push(val)
      stack.push(val)

      if min_stack.any?
        val = [val, min_stack.last].min
      else
        val = [val, val].min
      end

      min_stack.push(val)
    end

=begin
    :rtype: Void
=end
    def pop
      stack.pop
      min_stack.pop
    end

=begin
    :rtype: Integer
=end
    def top
      stack.last
    end

=begin
    :rtype: Integer
=end
    def get_min
      min_stack.last
    end
end

obj = MinStack.new
obj.push(-2)
obj.push(0)
obj.push(-3)
obj.get_min
obj.pop
obj.top
puts obj.get_min
