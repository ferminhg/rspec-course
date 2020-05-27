class Card
  attr_reader :rank, :suit
  def initialize rank, suit
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  it 'has a rank' do
    card = Card.new('Ace', 'Spades')
    expect(card.rank).to eq('Ace')
  end
  
  it 'has a suit' do
    card = Card.new('Ace', 'Spades')
    expect(card.suit).to eq('Spades')
  end
end



RSpec.describe 'math calculations' do
  it 'does basic math' do
    expect(3 + 4).to eq(7)
    expect(3 * 4).to eq(12)
    expect(3 - 4).to eq(-1)
    expect(4 / 2).to eq(2)
  end
end