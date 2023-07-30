require 'pry'

# @param {Integer} target
# @param {Integer[]} position
# @param {Integer[]} speed
# @return {Integer}
def car_fleet(target, position, speed)
   fleet = []
   pairs = position.zip(speed).sort

   pairs.reverse.each do |p, s|
      fleet << (target - p).fdiv(s)

      if fleet.length >= 2 && (fleet[-1] <= fleet[-2])
        binding.pry
        fleet.pop
      end
   end

   fleet.length
end
