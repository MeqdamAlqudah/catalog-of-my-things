class Maingener
  def list_all_genres(geners)
    var = ''
    geners.each { |n| var += "Id: #{n[0].to_int} gener: #{n[1].to_str} \n" }
    var
  end
end
