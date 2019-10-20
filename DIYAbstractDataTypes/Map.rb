class Map

  attr_reader :mapArray

  def initialize
    @mapArray = Array.new
  end

  def set(key, value)
    mapArray.each do |el|
      if el[0] == key
        el[1] = value
      end
    end
    if mapArray.none? {|el| el[0] == key }
      mapArray << [key, value]
    end
  end

  def get(key)
    mapArray.each do |el|
      if el[0] == key
        return el[1]
      end
    end
  end

  def delete(key)
    mapArray.any? { |el| mapArray.delete(el) if el[0] == key }
  end

  def show
    mapArray
  end

end
