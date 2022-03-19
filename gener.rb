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
  attr_accessor :name, :id

  def to_string
    "#{@name}"
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'a' => [id, name]
    }.to_json(*args)
  end

  def self.json_create(object)
    new(*object['a'])
  end
end
