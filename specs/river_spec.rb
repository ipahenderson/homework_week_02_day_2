require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')


class TestRiver < Minitest::Test
  def setup
    @river_name = "Tweed"
    @fish_name1 = "Nemo"
    @fish_name2 = "Fred"
    @fish1 = Fish.new(@fish_name1)
    @fish2 = Fish.new(@fish_name2)
    @stock = [@fish1, @fish2]
    @river = River.new(@river_name, @stock)
    @bear_name = "Yogi"
    @bear = Bear.new (@bear_name)
  end

  def test_river_name
    assert_equal(@river_name, @river.river_name)
  end

  def test_river_stock_count
    result = @river.stock.count
    assert_equal(2, result)
  end

  def test_bear_eats_fish
    @bear.eat(@river)
    result1 = @bear.stomach.count
    result2 = @river.stock.count
    assert_equal(1, result1)
    assert_equal(1, result2)
  end



end
