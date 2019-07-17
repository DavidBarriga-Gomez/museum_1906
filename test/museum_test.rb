require './lib/exhibit'
require './lib/patron'
require './lib/museum'
require 'pry'
require 'minitest/autorun'
require 'minitest/pride'

class MuseumTest < Minitest::Test
  def setup
    @dmns = Museum.new("Denver Museum of Nature and Science")
    @gems_and_minerals = Exhibit.new("Gems and Minerals", 0)
    @dead_sea_scrolls = Exhibit.new("Dead Sea Scrolls", 10)
    @imax = Exhibit.new("IMAX", 15)
    @bob = Patron.new("Bob", 20)
    @sally = Patron.new("Sally", 20)
  end

  def test_if_museum_exists
    assert_instance_of Museum, @dmns
  end

  def test_if_museums_have_attributes
    assert_equal [], @dmns.exhibits
  end

  def test_if_museum_can_have_exhibits
    @dmns.add_exhibit(@gems_and_minerals)
    @dmns.add_exhibit(@dead_sea_scrolls)
    @dmns.add_exhibit(@imax)
    assert_equal [@gems_and_minerals, @dead_sea_scrolls, @imax], @dmns.exhibits
  end
end