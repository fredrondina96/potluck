require 'pry'

class Potluck

attr_reader :date, :category

  def initialize(date, dishes = [])
    @date = date
    @dishes = dishes
  end
end
