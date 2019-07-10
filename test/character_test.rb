require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharacterTest < Minitest::Test

  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
  end

  def test_it_exists
    assert_instance_of Character, @kitt
  end

  def test_attributes
    assert_equal @kitt.name, "KITT"
    assert_equal @kitt.actor, "William Daniels"
    assert_equal @kitt.salary, 1000000
  end

end
