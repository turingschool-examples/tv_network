require 'minitest/autorun'
require 'minitest/pride'
require 'pry'
require './lib/character'
require './lib/show'

class ShowTest < Minitest::Test
  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
  end #setup

  def test_if_things_exist
    assert_instance_of Character, @michael_knight
    assert_instance_of Show, @knight_rider
  end

  def test_if_knight_rider_has_attributes
    assert_equal "Knight Rider", @knight_rider.show_name
    assert_equal "Glen Larson", @knight_rider.creator
    assert_equal [@michael_knight, @kitt], @knight_rider.characters 

  end
end #class
