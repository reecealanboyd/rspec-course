# frozen_string_literal: true

class Deck
  def self.build
    # Business logic to build a whole bunch of cards
  end
end

class CardGame
  attr_reader :cards

  def start
    @cards = Deck.build
  end
end

RSpec.describe CardGame do
  it 'can only implement class methods that are defined on a class' do
    # class_double(Deck, build: %w[Ace Queen], shuffle: ['Queen', 'Ace'])
    # the above would fail because shuffle is not a known method

    # need the as_stubbed_const to replace calls
    deck_klass = class_double(Deck, build: %w[Ace Queen]).as_stubbed_const

    # what if you want to build CardGame without Deck yet?
    # put Deck in a string like below:
    # class_double('Deck', build: %w[Ace Queen])

    expect(deck_klass).to receive(:build)
    subject.start
    expect(subject.cards).to eq(%w[Ace Queen])
  end
end
