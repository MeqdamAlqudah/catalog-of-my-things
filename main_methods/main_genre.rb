class Maingener
  def list_all_genres(geners)
    var = ''
    geners.each { |n| var += "#{n.to_string} \n" }
    var
  end
end
