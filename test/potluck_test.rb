require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'
require './lib/potluck'
require 'pry'

class PotluckTest < Minitest::Test

  def setup
    @couscous_salad = Dish.new("Couscous Salad", :appetizer)
    @cocktail_meatballs = Dish.new("Cocktail Meatballs", :entre)
    @potluck = Potluck.new("7-13-18")
  end

  def test_potluck_exists
      assert_instance_of Potluck, @potluck
  end

  def test_potluck_stores_date
    assert_equal "7-13-18", @potluck.date
  end

  def test_potluck_stores_dishes
    @potluck.add_dish(@couscous_salad)
    @potluck.add_dish(@cocktail_meatballs)
    binding.pry
    assert_equal 2, @potluck.dishes.length
  end
end
