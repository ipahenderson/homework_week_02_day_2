require('minitest/autorun')
require('minitest/rg')
require_relative('../river.rb')
require_relative('../fish.rb')
require_relative('../bear.rb')


class TestFish < Minitest::Test
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




end
