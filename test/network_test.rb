require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'
require './lib/network'

class NetworkTest < Minitest::Test
  def setup
    @nbc = Network.new("NBC")
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @knight_rider = Show.new("Knight Rider", "Glen Larson", [@michael_knight, @kitt])
    @leslie_knope = Character.new({name: "Leslie Knope", actor: "Amy Poehler", salary: 2_000_000})
    @ron_swanson = Character.new({name: "Ron Swanson", actor: "Nick Offerman", salary: 1_400_000})
    @parks_and_rec = Show.new("Parks and Recreation", "Michael Shur & Greg Daniels", [@leslie_knope, @ron_swanson])
  end

  def test_network_exists
    assert_instance_of Network, @nbc
  end

  def test_attributes
    assert_equal "NBC", @nbc.name
    assert_equal [], @nbc.shows
  end

  def test_network_can_add_shows
    @nbc.add_show(@parks_and_rec)
    @nbc.add_show(@knight_rider)

    assert_equal [@parks_and_rec, @knight_rider], @nbc.shows
  end

  def test_find_networks_highest_paid_actor
    @nbc.add_show(@parks_and_rec)
    @nbc.add_show(@knight_rider)

    assert_equal "Amy Poehler", @nbc.highest_paid_actor
  end

  def test_payroll
    @nbc.add_show(@parks_and_rec)
    @nbc.add_show(@knight_rider)

    assert_equal ({"David Hasselhoff" => 1600000, "William Daniels" => 1000000, "Amy Poehler" => 2000000, "Nick Offerman" => 1400000}), @nbc.payroll
  end
end
