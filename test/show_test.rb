require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'

class ShowTest < Minitest::Test

  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
  end

  def test_instance_of_show
    assert_instance_of Show, @knight_rider
  end

  def test_show_name
    assert_equal 'Knight Rider', @knight_rider.name
  end

  def test_show_creator
    assert_equal 'Glen Larson', @knight_rider.creator
  end

  def test_show_total_salary
    assert_equal 2600000, @knight_rider.total_salary
  end
end
