require_relative('./gener')
class Maingener
  @genre = []
  def list_all_genres
    count = 1
    Gener.new.items.each do |single|
      puts "#{count}) #{single}"
      count += 1
    end
  end
end
