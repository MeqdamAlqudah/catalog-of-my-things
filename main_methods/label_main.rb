class Labelmain(labels)
  def list_all_labels
    labels.each { |label| puts label.to_string }
  end
  
end