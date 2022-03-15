class Label
  def initialize(title, color)
    @id = 0
    @items = []
    @title = title
    @color = color
  end

  def add_item(item)
    @items << item
    item.label(self)
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