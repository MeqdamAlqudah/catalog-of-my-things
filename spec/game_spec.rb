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