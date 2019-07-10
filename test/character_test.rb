require 'minitest/autorun'
require 'minitest/pride'
require './lib/character'

class CharacterTest < Minitest::Test

  def setup
    @kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

    assert_instance_of Character, @kitt
  end

  def test_attributes
    p @kitt.name
    p @kitt.actor
    p @kitt.salary
  end

end
