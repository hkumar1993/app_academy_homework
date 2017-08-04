class Map

  attr_reader :map

  def initialize
    @map = []
  end

  def assign(key,value)
    if lookup(key).nil?
      @map << [key,value]
    else
      @map.each do |pair|
        if pair.first == key
          pair.pop
          pair << value
          break
        end
      end
    end
  end

  def lookup(key)
    @map.each do |pair|
      return pair if pair.first == key
    end
    nil
  end

  def show
    dup_map = @map.dup
  end

end
