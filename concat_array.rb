# @param {Integer[]} nums
# @return {Integer[]}
def get_concatenation(nums)
    ans = []
    2.times do
        nums.each { |n| ans << n }
    end
    
    ans
end
