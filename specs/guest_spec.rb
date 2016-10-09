require 'minitest/autorun'
require 'minitest/rg'
require_relative '../guest'

class TestGuest < Minitest::Test

  def setup
    @guest = Guest.new("Kylie",10)
  end

  def test_guest_has_a_name
    assert_equal("Kylie", @guest.name)
  end

  def test_guest_has_money
    assert_equal(10, @guest.money)
  end

end