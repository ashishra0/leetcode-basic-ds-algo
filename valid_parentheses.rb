def is_valid(s)
  stack = []
  close_to_open = {")" => "(", "}" => "{", "]" => "["}

  s.split("").each do |c|
    if close_to_open.has_key?(c)
      if (stack && stack.last) == close_to_open[c]
        stack.pop
      else
        return false
      end
    else
      stack.push(c)
    end
  end

  stack.empty? ? true : false
end

is_valid("()[]{}")