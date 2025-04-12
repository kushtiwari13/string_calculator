require 'minitest/autorun'
require_relative 'string_calculator'

class StringCalculatorTest < Minitest::Test
  def test_empty_string
    calc = StringCalculator.new
    assert_equal 0, calc.add("")
  end
end
