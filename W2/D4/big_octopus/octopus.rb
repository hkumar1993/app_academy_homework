def sluggish_octopus(array)
  biggest_fish = nil
  array.each_index do |i|
    biggest_fish = array[i]
    array.each_index do |j|
      next if i == j
      biggest_fish = array[j] if array[j].length > array[i].length
    end
    return biggest_fish if biggest_fish == array[i]
  end
end

def dominant_octopus(array)
  sorted = array.merge_sort { |fish1, fish2| fish1.length <=> fish2.length}
  sorted.last
end

class Array

  def merge_sort(&prc)
    prc ||= Proc.new { |num1,num2| num1 <=> num2}

    return self if length == 1
    midpoint = length / 2
    left_array = self[0...midpoint].merge_sort(&prc)
    right_array = self[midpoint..length].merge_sort(&prc)

    left_array.merge(right_array, &prc)

  end

  def merge(right, &prc)
    result = []
    until self.empty? || right.empty?
      if prc.call(first,right.first) == -1
        result << shift
      else
        result << right.shift
      end
    end
    result.concat(self)
    result.concat(right)
    result
  end

end

def clever_octopus(array)
  biggest_fish = ""
  array.each do |fish|
    biggest_fish = fish if fish.length > biggest_fish.length
  end
  biggest_fish
end

def slow_dance(direction, tiles)
  tiles.each_index do |idx|
    return idx if tiles[idx] == direction
  end
end

def constant_dance(direction, tiles_hash)
  tiles_hash[direction]
end

array = ['fish','fiiiiiish','fiiiiiiiiiiiiiish','fiiiiiiiiiish','fiiiiiiiiiiiiiiiiiiish','fish','fiiiish','fish']
puts sluggish_octopus(array)
puts dominant_octopus(array)
puts clever_octopus(array)

tiles = ["up","right-up","right", "right-down", "down", "left-down", "left", "left-up"]

puts slow_dance("left",tiles)

tiles_hash = Hash.new
id = 0
tiles.each do |tile|
  tiles_hash[tile] = id
  id += 1
end

puts constant_dance("left",tiles_hash)
