require 'rspec'
require 'recursion'

describe "#sum_to" do
  it "calculates sum from 1 to n" do
    expect(sum_to(5)).to eq(15)
    expect(sum_to(1)).to eq(1)
    expect(sum_to(9)).to eq(45)
  end

  it "returns nil for negative numbers" do
    expect(sum_to(-8)).to eq(nil)
  end

end

describe "#add_numbers" do
  it "sums an array of Fixnums" do
    add_numbers([1,2,3,4]) # => returns 10
    add_numbers([3]) # => returns 3
    add_numbers([-80,34,7]) # => returns -39
  end

  it "returns nil for empty array" do
    add_numbers([]) # => returns nil
  end
end

describe "#gamma_fnc" do
  it "retursn (n-1)!" do
    gamma_fnc(0)  # => returns nil
    gamma_fnc(1)  # => returns 1
    gamma_fnc(4)  # => returns 6
    gamma_fnc(8)  # => returns 5040
  end
end

describe "#ice_cream_shop" do
  it "checks if favorite flavor is available in the shop" do
    ice_cream_shop(['vanilla', 'strawberry'], 'blue moon')  # => returns false
    ice_cream_shop(['pistachio', 'green tea', 'chocolate', 'mint chip'], 'green tea')  # => returns true
    ice_cream_shop(['cookies n cream', 'blue moon', 'superman', 'honey lavender', 'sea salt caramel'], 'pistachio')  # => returns false
    ice_cream_shop(['moose tracks'], 'moose tracks')  # => returns true
    ice_cream_shop([], 'honey lavender')  # => returns false
  end
end

describe "#reverse" do
  it "reverses string" do
    reverse("house") # => "esuoh"
    reverse("dog") # => "god"
    reverse("atom") # => "mota"
    reverse("q") # => "q"
    reverse("id") # => "di"
    reverse("") # => ""
  end
end
