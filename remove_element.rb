# @param {Integer[]} nums
# @param {Integer} val
# @return {Integer}
def remove_element(nums, val)
    l = 0
    nums.each_with_index do |ele, i|
        if nums[i] != val
            nums[l] = nums[i]
            l += 1
        end
    end
    return l
end
