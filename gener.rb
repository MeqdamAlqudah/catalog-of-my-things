require_relative './item'

class Gener
  attr_reader :items

  def initialize(name)
    @id = Random.new.rand(10_000)
    @name = name
    @items = []
  end

  def add_item(item)
    item.genre = (self)
  end

  def to_string
    "#{@name}"
  end
end
