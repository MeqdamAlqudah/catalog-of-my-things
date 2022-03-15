class Items
  def initialize(publish_date, archived) 
    @id = Random.rand(1..2000)
    @publish_date = publish_date
    @archived = archived
  end

  def genre=(genre)
    @genre = genre
    genre.items.push(self) unless genre.items.include?(self)
  end

  def author=(author)
    @author = author
    author.items.push(self) unless author.items.include?(self)
  end

  def source=(source)
    @source = source
    source.items.push(self) unless source.items.includes?(self)
  end

  def label=(label)
    @label = label
    label.items.push(self) unless label.items.includes?(self)
  end

  def can_be_archived?
    @archived
  end

  def move_to_archive
    @archived = true;
  end
end