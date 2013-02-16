require 'helper'

class TestChordy < Test::Unit::TestCase
  def test_chord
    Chord.new(:M, 6)
  end

  should "have methods and constants for all chord flags" do
    c = test_chord
    methods = c.methods
    class_flags = Chord::CHORD_FLAGS
    consts = Chord.constants

    # class methods
    class_flags.each { |f| assert(consts.include?(f.upcase.to_sym), "no constant '#{f}' in Chord") }
    class_flags.each { |method| assert(methods.include?(method.to_sym), "no class method '#{method}' in Chord") }

    instance_flags = class_flags.select { |c| c!= "dont_play"}.map { |c| "play_" + c.to_s }

    # instance methods
    instance_flags.each { |method| assert(methods.include?(method.to_sym), "no instance method '#{method}' in Chord") }
  end

  should "knows all chord types" do
    short_chords = Chord.short_chords

    short_chords.keys.each { |k| assert_not_nil(Chord.new(k, 6)) }
    short_chords.values.each { |k| assert_not_nil(Chord.new(k, 6)) }
  end

  should "has all chord types for all chord families" do
    chord_families = [C, CSharp, DFlat, D, DSharp, EFlat, E, F, FSharp, GFlat, G, GSharp, AFlat, A, ASharp, B]

    short_chords = Chord.short_chords.values
    short_chord_methods = short_chords.map { |c| "play_" + c.to_s }

    chord_families.each do |family|
      family_methods = family.instance_methods
      short_chord_methods.each { |method| assert(family_methods.include?(method.to_sym), "no method '#{method}' in #{family}") }
    end
  end

  should "support any tuning length" do
    no_auto
    tuning_range = 1..20

    tuning_range.each do |t|
      assert_nothing_raised do
        tuning = ["a"] * t
        tune tuning
        play :C
      end
    end
  end

  should "print to string" do
    string = 1
    no_of_strings = 6

    no_auto
    play [string] * no_of_strings
    a = print_chords_to_string
    a_parts = a.split("\n").first(no_of_strings)

    a_parts.each { |c| assert(c.include? string.to_s) }
  end

  should "know strings at different positions" do
    # TODO implement
    true
  end
end