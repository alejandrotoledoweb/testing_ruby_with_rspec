require_relative '../card'

RSpec.describe Card do
  # not good when you want to interact with the same object during the test
  # calling card keeps calling a new object from the method
  # def card
  #   Card.new('Ace', 'Spades')
  # end

  # before do
  #   @card = Card.new('Ace', 'Spades')
  # end

  # another approach to create an instance before each test
  # this is the best option to do it
  # let!(:card) the bang! exclamation method makes the variable be called before every test, even tho the card variable is not needed it will be called
  let!(:card) { Card.new('Ace', 'Spades') }

  it 'has a rank and modify it\'s value' do
    expect(card.rank).to eq('Ace')
    card.rank = "Two"
    expect(card.rank).to eq('Two')
  end

  it 'has a suit' do
    expect(card.rank).to eq('Ace')
    expect(card.suit).to eq('Spades')
  end

  it 'has a custom error message' do
    comparison = 'Spades'
    expect(card.suit).to eq(comparison), "Hey, I expected #{comparison} but got #{card.suit} instead!"
  end

end
