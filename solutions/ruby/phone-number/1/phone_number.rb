# frozen_string_literal: true

# Write your code for the 'Phone Number' exercise in this file. Make the tests in
# `phone_number_test.rb` pass.
#
# To get started with TDD, see the `README.md` file in your
# `ruby/phone-number` directory.

class PhoneNumber
  VALID_EXCHANGE_DIGITS = [2, 3, 4, 5, 6, 7, 8, 9].freeze

  def self.clean(phone_number)
    result = phone_number.gsub(/\+1/, '').gsub(/\D/, '')

    result = result[1..11] if result.length == 11 && result[0] == '1'

    return nil if result.length != 10

    return nil unless VALID_EXCHANGE_DIGITS.include?(result[0].to_i)

    return nil unless VALID_EXCHANGE_DIGITS.include?(result[3].to_i)

    result
  end
end
