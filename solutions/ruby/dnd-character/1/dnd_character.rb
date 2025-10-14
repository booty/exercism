=begin
Write your code for the 'D&D Character' exercise in this file. Make the tests in
`dnd_character_test.rb` pass.

To get started with TDD, see the `README.md` file in your
`ruby/dnd-character` directory.
=end

class DndCharacter
  attr_reader :strength, :dexterity, :constitution, :intelligence, :wisdom, :charisma

  def self.modifier(constitution)
    ((constitution - 10) / 2).to_i
  end

  def hitpoints
    10 + self.class.modifier(@constitution)
  end

  def initialize
    @strength = rand(3..18)
    @dexterity = rand(3..18)
    @constitution = rand(3..18)
    @intelligence = rand(3..18)
    @wisdom = rand(3..18)
    @charisma = rand(3..18)
  end
end
