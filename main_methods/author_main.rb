require_relative '../author'

class Authormain
  def list_all_author(authors)
    var = ''
    authors.each { |n| var += "#{n.to_string} \n" }
    var
  end
end
