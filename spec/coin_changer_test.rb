require "minitest/autorun"
require_relative '../lib/coin_changer.rb'

class CoinChangerTest < Minitest::Test
  def setup
    @coin_changer = CoinChanger.new
  end

  def test_coin_changer_exists
    assert(CoinChanger)
  end

  def test_changer_exits
    assert(@coin_changer.changer(100))
  end

  def test_changer_accuracy
    assert_equal({ quarter: 0, dime: 0, nickel: 0, penny: 0 }, @coin_changer.changer(0))
    assert_equal({ quarter: 0, dime: 0, nickel: 0, penny: 1 }, @coin_changer.changer(1))
    assert_equal({ quarter: 0, dime: 0, nickel: 1, penny: 0 }, @coin_changer.changer(5))
    assert_equal({ quarter: 0, dime: 1, nickel: 0, penny: 0 }, @coin_changer.changer(10))
    assert_equal({ quarter: 1, dime: 0, nickel: 0, penny: 0 }, @coin_changer.changer(25))
    assert_equal({ quarter: 0, dime: 0, nickel: 0, penny: 4 }, @coin_changer.changer(4))
    assert_equal({ quarter: 0, dime: 0, nickel: 1, penny: 4 }, @coin_changer.changer(9))
    assert_equal({ quarter: 0, dime: 2, nickel: 0, penny: 4 }, @coin_changer.changer(24))
    assert_equal({ quarter: 3, dime: 2, nickel: 0, penny: 4 }, @coin_changer.changer(99))
    assert_equal({ quarter: 4, dime: 0, nickel: 0, penny: 0 }, @coin_changer.changer(100))
  end
end
