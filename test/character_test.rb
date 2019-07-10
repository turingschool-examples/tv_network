require './lib/character'
require 'minitest/autorun'
require 'minitest/pride'
require "pry"

class CharacterTest < Minitest::Test

kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})

  def test_it_has_name
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    assert_equal "KITT", kitt.name
  end

  def test_it_has_actor
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    assert_equal "William Daniels", kitt.actor
  end

  def test_it_has_salary
    kitt = Character.new({name: "KITT", actor: "William Daniels", salary: 1_000_000})
    assert_equal 1000000, kitt.salary
  end
end
