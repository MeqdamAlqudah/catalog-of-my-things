class Author 
  def initialize(first_name, last_name)
    @id = Random.rand(1..2000)
    @first_name = first_name
    @last_name last_name
    @items = []
  end

  def add_items(items)
    @items.push(items)
    items.author = self
  end

end