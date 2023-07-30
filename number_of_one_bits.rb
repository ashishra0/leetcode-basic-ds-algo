# @param {Integer} n, a positive integer
# @return {Integer}
def hamming_weight(n)
  n = n.to_s(2)
  count = 0
  n.chars.each do |i|
      if 1 & i.to_i == 1
          count += 1
      end
  end
  
  count
end
