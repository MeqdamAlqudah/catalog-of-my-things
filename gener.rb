require_relative './item'

class Gener
  def initialize(name)
    @id = Random.new.rand(10_000)
    @name = name
    @items = []
  end

  def add_item(item)
    item.genre = (self)
  end

  attr_reader :items
  attr_accessor :name

  def to_string
    @name.to_s
  end
end
