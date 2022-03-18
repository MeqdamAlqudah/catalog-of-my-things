require 'spec_helper'

describe "test MusicAlbum" do
    it "Test can be archive method" do
        music = MusicAlbum.new(false, "02/07/2009", false)
        music.move_to_archive
        expect(music.can_be_archived?).to  eq(true)
    end
end

describe "Test all main music album related method" do
       before :each do
        musicAlbum = MusicAlbum.new(false, "02/07/2009", false)
        mainAlbums = Musicmain.new
        @music_albums = []
    end
    it "Test list all album method" do
        @music_albums.push(musicAlbum)
        expect(mainAlbums.list_all_music_albums(@music_albums)).to  eq ""
    end
    
end

