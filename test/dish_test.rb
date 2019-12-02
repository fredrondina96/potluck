require 'minitest'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/dish'

class DishTest < Minitest::Test

  def setup
    @dish = Dish.new("Couscous Salad", :appetizer)
  end

  def test_dish_exists
      assert_instance_of Dish, @dish
  end

  def test_dish_has_name
    assert_equal "Couscous Salad", @dish.name
  end
end
