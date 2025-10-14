=begin
Write your code for the 'Eliuds Eggs' exercise in this file. Make the tests in
`eliuds_eggs_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/eliuds-eggs` directory.
=end

class EliudsEggs
  def self.egg_count(num)
    return 0 if num==0


    eggs=0

    while num > 0
      if num % 2 > 0
        eggs+=1
      end

      num = num / 2
    end

    return eggs
  end
end
