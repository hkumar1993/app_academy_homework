class LRUCache

  attr_reader :cache, :length

  def initialize(length)
    @cache = []
    @length = length
  end

  def count
    @cache.length
  end

  def add(el)
    if @cache.length < @length
      @cache.delete(el) if @cache.include?(el)
    else
      @cache.shift
    end
    @cache << el
  end

  def show
    puts "#{@cache}"
  end
  
end
