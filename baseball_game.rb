require 'pry'

def cal_points(operations)
  stack = []

  operations.each do |op|
    if op == "+"
      stack << (stack[-1] + stack[-2])
    elsif op == "D"
      stack << (2*stack[-1])
    elsif op == "C"
      stack.pop
    else
      stack << op.to_i
    end
  end
  
  stack.sum
end

puts cal_points(["1", "C"])
