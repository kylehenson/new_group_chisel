require_relative '../lib/new_chisel'

class ChiselTest < Minitest::Test

  def setup
    @chisel = Chisel.new
  end

  def test_it_exists
    chisel = Chisel.new
    assert chisel
  end

  def test_it_has_parse_method
    document = "kyra"
    assert_equal "<p>kyra</p>", @chisel.parse(document)
  end

end
