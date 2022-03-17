class Labelmain
  def list_all_labels(labels)
    var = ''
    labels.each { |n| var += "#{n.to_string} \n" }
    var
  end
end
