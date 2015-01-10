require_relative '../lib/element_checker'
require 'minitest/autorun'

class ElementCheckerTest < Minitest::Test

  def setup
    line = "kyra"
    @checker = ElementChecker.new(line)
  end

  def test_it_exists
    line = 'cool'
    checker = ElementChecker.new(line)
    assert checker
  end

  def test_it_has_paragraph_method
    output = @checker.paragraph?
    assert output
  end

  def test_for_header_method
    line = '##header'
    checker = ElementChecker.new(line)
    output = checker.header?
    assert_equal true, output
  end

  def test_it_is_not_a_header
    line = 'header'
    checker = ElementChecker.new(line)
    output = checker.header?
    assert_equal false, output
  end

  def test_it_checks_for_strong
    line = '**header**'
    checker = ElementChecker.new(line)
    output = checker.strong?
    assert_equal true, output
  end

  def test_it_checks_for_emphasized
    line = '*header*'
    checker = ElementChecker.new(line)
    output = checker.emphasized?
    assert_equal true, output
  end

  def test_it_checks_for_unordered_lists
    line = '* header'
    checker = ElementChecker.new(line)
    output = checker.unordered_list?
    assert_equal true, output
  end

  def test_it_checks_for_ordered_lists
    #FAIL
    line = '2. header'
    checker = ElementChecker.new(line)
    output = checker.ordered_list?
    assert_equal true, output
  end

end
