require 'minitest/autorun'
require 'minitest/pride'
require './lib/card'
require 'pry'

class CardTest < Minitest::Test
  def test_it_exists
    card = Card.new("Ace", "Spades")

    assert_instance_of Card, card
  end

  def test_a_card_stores_attributes
    card = Card.new("Ace", "Spades")

    assert_equal "Ace", card.value
    assert_equal "Spades", card.suit
  end

  def test_a_card_renders_to_words
    card = Card.new("Ace", "Spades")
    assert_equal "Ace of Spades", card.in_words
  end
end
