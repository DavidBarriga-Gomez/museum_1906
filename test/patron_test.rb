require './lib/exhibit'
require './lib/patron'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class PatronTest < Minitest::Test
  def setup
    @bob = Patron.new("Bob", 20)
  end

  def test_if_patron_has_attributes
    assert_equal "Bob", @bob.name
    assert_equal 20, @bob.spending_money
    assert_equal [], @bob.interests
  end

  def test_if_patrons_can_have_interest
    @bob.add_interest("Dead Sea Scrolls")
    @bob.add_interest("Gems and Minerals")
    assert_equal ["Dead Sea Scrolls", "Gems and Minerals"], @bob.interests
  end
end
