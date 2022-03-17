class Authormain
  def list_all_author(authors)
    authors.each { |n| return n.to_string }
  end
end
