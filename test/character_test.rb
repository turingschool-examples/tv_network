require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'
require './lib/show'

class CharacterTest < Minitest::Test

  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    @michael_knight = Character.new({name: "Michael Knight", actor: "David Hasselhoff", salary: 1_600_000})
  end

  def test_that_it_exists
    assert_instance_of Character, @kitt
  end

  def test_that_kitt_has_attributes
    assert_equal "KITT", @kitt.name
    assert_equal "William Daniels", @kitt.actor
    assert_equal 1000000, @kitt.salary
  end
end
