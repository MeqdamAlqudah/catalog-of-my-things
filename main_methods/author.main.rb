require_relative './author'

class Authormain
  def list_all_author(authors)
    authors.each { |n| puts n.to_string }
  end
end
