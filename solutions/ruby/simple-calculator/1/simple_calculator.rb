class SimpleCalculator
  ALLOWED_OPERATIONS = ['+', '/', '*'].freeze

  class UnsupportedOperation < StandardError; end

  def self.calculate(first_operand, second_operand, operation)
    unless first_operand.is_a?(Integer) and second_operand.is_a?(Integer)
      raise ArgumentError, "Both operands should be integers"
    end

    unless ALLOWED_OPERATIONS.include?(operation)
      raise UnsupportedOperation, "I don't know how to do that"
    end

    if operation=="/" and second_operand==0
      return "Division by zero is not allowed."
    end

    result = case operation
    when "*"
      first_operand * second_operand
    when "+"
      first_operand + second_operand
    when "/"
      first_operand / second_operand
    end

    "#{first_operand} #{operation} #{second_operand} = #{result}"
  end
end
