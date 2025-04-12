require 'minitest/autorun'
require_relative 'string_calculator'

class StringCalculatorTest < Minitest::Test
  def test_empty_string
    calc = StringCalculator.new
    assert_equal 0, calc.add("")
  end

  def test_single_number
    calc = StringCalculator.new
    assert_equal 1, calc.add("1")
  end
  
  def test_two_numbers
    calc = StringCalculator.new
    assert_equal 6, calc.add("1,5")
  end
  
  def test_newline_between_numbers
    calc = StringCalculator.new
    assert_equal 6, calc.add("1\n2,3")
  end

  def test_custom_delimiter
    calc = StringCalculator.new
    assert_equal 3, calc.add("//;\n1;2")
  end
  
  def test_negative_numbers
    calc = StringCalculator.new
    assert_raises(RuntimeError, "negative numbers not allowed -1") do
      calc.add("-1,5")
    end
  end
  
  
end
