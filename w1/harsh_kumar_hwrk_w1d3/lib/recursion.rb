def sum_to(n)
  return nil if n < 0
  return n if n  == 0
  n + sum_to(n - 1)
end

def add_numbers(num_array)
  return num_array.first if num_array.length <= 1
  num_array[0] + add_numbers(num_array[1..-1])
end

def gamma_fnc(n)
  return nil if n < 1
  return n if n == 1
  (n - 1)*gamma_fnc(n - 1)
end

def ice_cream_shop(flavors, favorite)
  return false if flavors.empty?
  flavors.first == favorite || ice_cream_shop(flavors[1..-1], favorite)
end

def reverse(str)
  return str if str.length <= 1
  "#{str[-1]}#{reverse(str[0...-1])}"
end
