class Retirement

  def calculate(current_age, retirement_age)
    return "Error. Age cannot be negative." if current_age < 0 || retirement_age < 0
    years_till = retirement_age - current_age
    "You have #{years_till} years left until you can retire. It is 2015, so you can retire in 2055."
  end


end