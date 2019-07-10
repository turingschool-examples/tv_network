require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'
require './lib/network'
require 'pry'

class NetworkTest < MiniTest::Test

  def setup
    @nbc = Network.new("NBC")
  end

  def test_it_exist
    assert_instance_of Network, @nbc
  end

  def test_network_attributes
    assert_equal "NBC", @nbc.name
    assert_equal [], @nbc.shows
  end
end
