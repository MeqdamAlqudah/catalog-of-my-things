require 'spec_helper'

describe "test MusicAlbum" do
    it "Test can be archive method" do
        music = MusicAlbum.new("02/07/2009", false,  false)
        music.move_to_archive
        expect(music.can_be_archived?).to  eq(true)
    end
end

describe "Test all main music album related method" do
       before :each do
        @music = MusicAlbum.new("02/07/2009",false, false)
        @mainAlbums = Musicmain.new
        @music_albums = []
    end
    it "Test list all album method" do
        @music.id = 232
        @music_albums.push(@music)
        expect(@mainAlbums.list_all_music_albums(@music_albums)).to  eq "ID: 232 Published Date: 02/07/2009 Archived: false On spotity: false \n"
    end
    
end

