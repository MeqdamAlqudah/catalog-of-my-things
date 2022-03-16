class Label
  def initialize(title, color)
    @id = Random.rand(1..2000)
    @items = []
    @title = title
    @color = color
  end

  def add_item(item)
    @items.push(item)
    item.label(self)
  end

  def to_string
    "Title: #{@title} Color: #{@color}"
  end

  def to_json(*args)
    {
      JSON.create_id => self.class.name,
      'a' => [title, color]
    }.to_json(*args)
  end

  def self.json_create(object)
    new(*object['a'])
  end
end