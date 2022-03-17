class Labelmain
  def list_all_labels(labels)
    labels.each { |label| return label.to_string }
  end
end
