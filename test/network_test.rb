require './lib/character'
require './lib/show'
require './lib/network'
require 'minitest/autorun'
require 'minitest/pride'
require 'pry'

class NetworkTest < Minitest::Test

  def setup
    michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    knight_rider = Show.new("Knight Rider", "Glen Larson", [michael_knight, kitt])
    leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [leslie_knope, ron_swanson])
    @nbc = Network.new("NBC")
  end

  def test_it_exists

    assert_instance_of Network, @nbc
  end

  def test_it_has_a_name

    assert_equal "NBC", @nbc.name
  end

  def test_it_has_shows

    assert_equal [], @nbc.shows
  end

  def test_for_highest_paid_actor

    assert_equal "Amy Poehler", @nbc.highest_paid_actor
  end

  def test_it_can_add_shows
    @nbc.add_show(@knight_rider)
    @nbc.add_show(@parks_and_rec)

    assert_equal [@knight_rider, @parks_and_rec], @nbc.shows
  end

  def test_it_can_get_payroll
    actors = ["David Hasselhoff",
              "William Daniels",
              "Amy Poehler",
              "Nick Offerman"]

    expected = {actors[0] => 1600000, actors[1] => 1000000, actors[2] => 2000000, actors[3] => 1400000}
    assert_equal expected, @nbc.payroll
  end

end
