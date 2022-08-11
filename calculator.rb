require "rspec"

class Calculator
  def add(number_one, number_two)
    return number_one + number_two
  end

  def subtract(number_one, number_two)
    return number_one - number_two
  end

  def multiply(number_one, number_two)
    return number_one * number_two
  end

  def divide(dividend, divisor)
    return dividend / divisor
  end

  def square(number)
    return square * square
  end

  def power(number, exponent)
    return number ** exponent
  end
end

RSpec.describe Calculator do
  describe "#add" do
    it "should return the sum of two numbers" do
      calculator = Calculator.new
      result = calculator.add(1, 3)
      expect(result).to eq(4)
    end

    it "should work with negative numbers" do
      calculator = Calculator.new
      result = calculator.add(1, -3)
      expect(result).to eq(-2)
    end
  end

  describe "#subtract" do
    it "should return the difference between two numbers" do
      calculator = Calculator.new
      result = calculator.subtract(3, 1)
      expect(result).to eq(2)
    end

    it "should work with negative numbers" do
      calculator = Calculator.new
      result = calculator.subtract(3, -1)
      expect(result).to eq(4)
    end
  end

  describe "#multiply" do
    it "should return the product between two numbers" do
      calculator = Calculator.new
      result = calculator.multiply(3, 4)
      expect(result).to eq(12)
    end

    it "should work with negative numbers" do
      calculator = Calculator.new
      result = calculator.multiply(3, -4)
      expect(result).to eq(-12)
    end

    it "should work with two negative numbers" do
      calculator = Calculator.new
      result = calculator.multiply(-3, -4)
      expect(result).to eq(12)
    end

    it "should work with zero" do
      calculator = Calculator.new
      result = calculator.multiply(3, 0)
      expect(result).to eq(0)
    end
  end

  describe "#divide" do
    it "should return the quotient between two numbers" do
      calculator = Calculator.new
      result = calculator.divide(4, 2)
      expect(result).to eq(2)
    end

    it "should work with negative numbers" do
      calculator = Calculator.new
      result = calculator.divide(9, -3)
      expect(result).to eq(-3)
    end

    it "should work with two negative numbers" do
      calculator = Calculator.new
      result = calculator.divide(-9, -3)
      expect(result).to eq(3)
    end

    it "should work with zero" do
      calculator = Calculator.new
      result = calculator.divide(0, 3)
      expect(result).to eq(0)
    end

    # it "should not work with dividing by zero" do
    #   calculator = Calculator.new
    #   result = calculator.divide(3, 0)
    #   expect(result).to eq(nil)
    # end
  end

  describe "#square" do
    it "should return the square of a number" do
      calculator = Calculator.new
      result = calculator.square(3)
      expect(result).to eq(9)
    end

    it "should work with a negative number" do
      calculator = Calculator.new
      result = calculator.multiply(-3)
      expect(result).to eq(9)
    end

    it "should work with zero" do
      calculator = Calculator.new
      result = calculator.multiply(0)
      expect(result).to eq(0)
    end
  end
end
