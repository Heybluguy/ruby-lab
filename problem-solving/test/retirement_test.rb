require_relative "test_helper"
require "./lib/retirement"

class RetirementTest < Minitest::Test

  def test_it_tells_me_when_i_should_retire
    # skip
    retire = Retirement.new

    result = retire.calculate(25, 65)
    expected = "You have 40 years left until you can retire. It is 2015, so you can retire in 2055."

    assert_equal expected, result
  end

  def test_it_tells_me_when_i_should_retire_with_different_ages
    # skip
    retire = Retirement.new

    result = retire.calculate(35, 65)
    expected = "You have 30 years left until you can retire. It is 2015, so you can retire in 2055."

    assert_equal expected, result
  end

  def test_it_errors_when_given_a_negative_age
    # skip
    retire = Retirement.new

    result = retire.calculate(-25, 65)
    expected = "Error. Age cannot be negative."

    assert_equal expected, result
  end

  def test_it_errors_when_retirement_age_is_negative
    # skip
    retire = Retirement.new

    result = retire.calculate(25, -65)
    expected = "Error. Age cannot be negative."

    assert_equal expected, result
  end
end
