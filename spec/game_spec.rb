require 'spec_helper'

describe 'Testing the Game class' do
  before :each do
    @game = Game.new('09-09-2009', true, true, '20-05-2005')
  end

  it 'with the above parameter a Game object should be created' do
    @game.should be_an_instance_of Game
  end

  it 'return correct published date' do
    @game.publish_date.should eql '09-09-2009'
  end

  it 'return coorect archived' do
    @game.archived.should eql true
  end

  it 'can be archived method should return true' do
    expect(@game.can_be_archived?).to eq true
  end

  it 'Testing game last_played method should return true' do
    expect(@game.last_played?).to eq true
  end
end

describe 'Testing the game related main methods' do
  before :each do
    @game = Game.new('09-09-2009', true, true, '20-05-2005')
    new_genre = Gener.new('comedy')
    new_author = Author.new('first_name', 'last_name')
    new_label = Label.new('title', 'color')

    @game.genre = (new_genre)
    @game.author = (new_author)
    @game.label = (new_label)

    @gamemain = Gamemain.new
    @games = []
  end

  it 'add and list games' do
    @gamemain.create_a_game(@game, @games)

    expect(@games.length).to eq 1
    @games[0].id = 232
    expect(@gamemain.list_all_games(@games)).to eq 'Game ID: 232 Published Date: 09-09-2009 '\
                                                    'Archived: true '\
                                                    "\n"\
                                                    'Genre: comedy Author: first_name last_name'\
                                                    "\n"\
                                                    'Label: title color '\
                                                   'Multiplayer: true Last Played At: 20-05-2005 '\
                                                   "\n"
  end
end
