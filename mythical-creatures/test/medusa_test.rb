gem 'minitest', '~> 5.2'
require 'minitest/autorun'
require 'minitest/pride'
require './lib/medusa'

class MedusaTest < Minitest::Test
  def test_it_has_a_name
    medusa = Medusa.new("Cassiopeia")
    assert_equal "Cassiopeia", medusa.name
  end

  def test_when_first_created_she_has_no_statues
    # skip
    medusa = Medusa.new("Cassiopeia")
    assert medusa.statues.empty?
  end

  def test_when_staring_at_a_person_she_gains_a_statue
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    medusa.stare(victim)
    assert_equal 1, medusa.statues.count
    assert_equal "Perseus", medusa.statues.first.name
  end

  def test_when_staring_at_a_person_that_person_turns_to_stone
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim = Person.new("Perseus")

    refute victim.stoned?
    medusa.stare(victim)
    assert victim.stoned?
  end

  def test_can_only_have_three_victims
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim_1 = Person.new("Bruce")
    victim_2 = Person.new("Peter")
    victim_3 = Person.new("Steve")
    victim_4 = Person.new("Tony")

    medusa.stare(victim_1)
    medusa.stare(victim_2)
    medusa.stare(victim_3)
    medusa.stare(victim_4)

    assert_equal medusa.statues.count, 3
  end

  def test_if_a_fourth_victim_is_stoned_first_is_unstoned
    # skip
    medusa = Medusa.new("Cassiopeia")
    victim_1 = Person.new("Bruce")
    victim_2 = Person.new("Peter")
    victim_3 = Person.new("Steve")
    victim_4 = Person.new("Tony")

    medusa.stare(victim_1)
    assert victim_1.stoned?

    medusa.stare(victim_2)
    medusa.stare(victim_3)
    medusa.stare(victim_4)

    refute victim_1.stoned?
  end
end
