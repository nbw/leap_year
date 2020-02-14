# Note: Using Yardoc for documentation: https://github.com/lsegal/yard

class Year
  attr_accessor :year

  # @param [Integer] year
  def initialize(year)
    @year = year
  end

  # The rules for a leap year are as follows:
  # 1. Always TRUE if divisible by 400
  # 2. FALSE if divisible by 100, unless also divisble by 400
  # 3. TRUE if divisible by 4, but not 100
  def leap_year?
    # Note: the order of these checks is important
    return true if divisible_by?(400)
    return false if divisible_by?(100)
    return true if divisible_by?(4)

    false
  end

  private

  # @param [Integer] factor
  def divisible_by? denom
    @year%denom == 0
  end
end

