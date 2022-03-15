class Main
    def list_all_books
        puts "under construction"
    end
    def list_all_music_albums
        puts "under construction"
    end
    def list_all_movies
        puts "under construction"
    end
    def list_of_games
        puts "under construction"

    end
    def list_all_genres
        puts "under construction"
    end
    def list_all_labels
        puts "under construction"
    end
    def list_all_authors
        puts "under construction"
    end
    def list_all_sources
        puts "under construction"
    end
    def add_a_book
        puts "under construction"
    end
    def add_a_music_album
        puts "under construction"
    end
    def add_a_movie
        puts "under construction"
    end
    def add_a_game
        puts "under construction"
    end
    def list 
  "\nPlease choose one of the options :\n"
        "1-List all books\n"+
"2-List all music albums\n"+
"3-List all movies\n"+
"4-List of games\n"+
"5-List all genres (e.g 'Comedy', 'Thriller')\n"+
"6-List all labels (e.g. 'Gift', 'New')\n"+
"7-List all authors (e.g. 'Stephen King')\n"+
"8-List all sources (e.g. \'From a friend\', \'Online shop\')\n"+
"9-Add a book \n"+
"10-Add a music album\n"+
"11-Add a movie\n"+
"12-Add a game\n"+
"13-exit\n"
    end
    def app_loop 
        message =  self.list
        flag = true
        while flag
            puts message
            value = gets.chomp
            if value.to_i == 1
                self.list_all_books
            elsif value.to_i ==2
                self.list_all_music_albums
            elsif value.to_i ==3
                self.list_all_movies
            elsif value.to_i ==4
                self.list_of_games
            elsif value.to_i ==5
                self.list_all_genres
            elsif value.to_i ==6
                self.list_all_labels
            elsif value.to_i ==7
                self.list_all_authors
            elsif value.to_i ==8
                self.list_all_sources
            elsif value.to_i ==9
                self.add_a_book
            elsif value.to_i ==10
                self.add_a_music_album
            elsif value.to_i ==11
                self.add_a_movie
            elsif value.to_i ==12
                self.add_a_game
            elsif value.to_i ==13
                flag = false
            else
                puts "Please enter a vlid value\n"
            end
        end
    end
end

Main.new.app_loop