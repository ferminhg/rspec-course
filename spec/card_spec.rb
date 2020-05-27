class Card
  attr_accessor :rank, :suit
  def initialize rank, suit
    @rank = rank
    @suit = suit
  end
end

RSpec.describe Card do
  # before do # hook to run before run each example
  #  @card = Card.new('Ace', 'Spades')
  # end

  # def card
  #   Card.new('Ace', 'Spades')
  # end

  # picks a symbol and create de variable
  # the block represent de equal
  let(:card) { Card.new('Ace', 'Spades')}

  it 'has a rank and that rank can change' do
    expect(card.rank).to eq('Ace')
    card.rank = 'Queen'
    expect(card.rank).to eq('Queen')
  end
  
  it 'has a rank' do
    expect(card.rank).to eq('Ace')
  end
  
  it 'has a suit' do
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison}"
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