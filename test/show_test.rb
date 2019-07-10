require './lib/character'
require './lib/show'
require 'minitest/autorun'
require 'minitest/pride'
require "pry"

class ShowTest < Minitest::Test
kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
michael_knight =Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])


  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @michael_knight =Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
  end

  def test_rider_has_name
    assert_equal "Knight Rider", @knight_rider.name
  end

  def test_creator_has_name
    assert_equal "Glen Larson", @knight_rider.creator
  end

  def test_characters_exists
    assert_instance_of Show, @knight_rider.characters
  end
end
