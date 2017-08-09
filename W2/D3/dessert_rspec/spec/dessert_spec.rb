require 'rspec'
require 'dessert'

=begin
Instructions: implement all of the pending specs (the `it` statements without blocks)! Be sure to look over the solutions when you're done.
=end

describe Dessert do
  subject(:cake) { Dessert.new("cake", 5, chef)}
  let(:chef) { double("chef") }

  describe "#initialize" do
    it "sets a type" do
      expect(cake.type).to eq("cake")
    end

    it "sets a quantity" do
      expect(cake.quantity).to eq(5)
    end

    it "starts ingredients as an empty array" do
      expect(cake.ingredients).to be_empty
    end

    it "raises an argument error when given a non-integer quantity" do
      expect do
        Dessert.new("cake","five", chef)
      end. to raise_error(ArgumentError)
    end
  end

  describe "#add_ingredient" do
    it "adds an ingredient to the ingredients array" do
      cake.add_ingredient("flour")
      expect(cake.ingredients.length).to eq(1)
    end

  end

  describe "#mix!" do
    it "shuffles the ingredient array" do
      cake.add_ingredient("eggs")
      cake.add_ingredient("flour")
      cake.add_ingredient("baking powder")
      cake.add_ingredient("sugar")
      original = cake.ingredients.dup
      cake.mix!
      expect(cake.ingredients).to_not eq(original)
    end

  end

  describe "#eat" do
    it "subtracts an amount from the quantity" do
      cake.eat(1)
      expect(cake.quantity).to eq(4)
    end

    it "raises an error if the amount is greater than the quantity" do
      expect { cake.eat(6) }.to raise_error("not enough left!")

    end
  end

  describe "#serve" do
    it "contains the titleized version of the chef's name" do
      allow(chef).to receive(:titleize)
      expect { cake.serve }.to_not raise_exception
    end
  end

  describe "#make_more" do
    it "calls bake on the dessert's chef with the dessert passed in" do
      allow(chef).to receive(:bake).with(cake)
      expect {cake.make_more}.to_not raise_exception
    end

  end
end
