require 'pry'

def remove_duplicates(nums)
    l = 1
    nums.each_with_index do |element, r|
      next if r == 0
        if nums[r] != nums[r-1]
            nums[l] = nums[r]
            l += 1
        end
    end
    return l
end

remove_duplicates([1,1,2])
