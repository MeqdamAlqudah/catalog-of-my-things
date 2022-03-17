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

describe "Testing the game related main methods" do 
  before :each do
    @game = Game.new('09-09-2009', true, true, '20-05-2005')
    @gamemain = Gamemain.new
    @games = []
  end

  it 'add and list games' do
    @gamemain.create_a_game(@game, @games)

    expect(@games.length).to eq 1
    expect(@gamemain.list_all_games(@games)).to eq "Game ID: #{@games[0].id} Published Date: #{@games[0].publish_date} Archived: #{@games[0].archived} Multiplayer: #{@games[0].multiplayer} Last Played At: #{@games[0].last_played_at}"
  end
end