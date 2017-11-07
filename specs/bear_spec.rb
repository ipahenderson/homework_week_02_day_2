require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')


class TestBear < Minitest::Test
  def setup
    @river_name = "Tweed"
    @river = River.new(@river_name, @stock)
    @fish_name1 = "Nemo"
    @fish_name2 = "Fred"
    @fish1 = Fish.new(@fish_name1)
    @fish2 = Fish.new(@fish_name2)
    @stock = [@fish1, @fish2]
    @bear_name = "Yogi"
    @bear = Bear.new (@bear_name)
  end

  def test_bear_name
    result = @bear.bear_name
    assert_equal("Yogi", result)
  end

  def test_roar
    result = @bear.roar
    assert_equal("RAWR!", result)
  end

end
