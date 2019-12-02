require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'
require 'pry'

class PotluckTest < Minitest::Test

  def setup
    @potluck = Potluck.new("7-13-18")
  end

  def test_potluck_exists
      assert_instance_of Potluck, @potluck
  end

  def test_potluck_stores_date
    binding.pry
    assert_equal "7-13-18", @potluck.date
  end

end
