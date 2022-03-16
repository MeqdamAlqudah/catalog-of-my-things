require 'date'

class Items
  def initialize(publish_date, archived)
    @id = Random.rand(1..2000)
    @publish_date = publish_date
    @archived = archived
    @genre
    @author
    @source
    @label
  end

  attr_accessor :publish_date, :archived, :id

  def to_string
    "ID: #{@id} Published Date: #{@publish_date} Archived: #{@archived}"
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
    source.items.push(self) unless source.items.include?(self)
  end

  def label=(label)
    @label = label
    label.items.push(self) unless label.items.include?(self)
  end

  attr_reader :label, :source, :author, :genre

  def can_be_archived?
    year = "#{@publish_date[6]}#{@publish_date[7]}#{@publish_date[8]}#{@publish_date[9]}"
    month = "#{@publish_date[3]}#{@publish_date[4]}"
    day = "#{@publish_date[0]}#{@publish_date[1]}"

    now = Date.today
    before = Date.civil(year.to_i, month.to_i, day.to_i)
    difference_in_days = (now - before).to_i

    var = (difference_in_days / 365.25).to_i

    var > 10
  end

  def move_to_archive
    @archived = true if can_be_archived?
  end
end
