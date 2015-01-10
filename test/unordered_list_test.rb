require 'minitest/autorun'
require 'minitest/pride'
require_relative '../lib/unordered_list'

class UnorderedListTest < Minitest::Test

  def setup
    document = "* strawberry\n* chocolate\n* caramel"
    @list = UnorderedList.new(document)
  end

  def test_it_exists
    assert @list
  end

  def test_it_renders
    assert_equal "<ul>\n<li>strawberry</li>\n<li>chocolate</li>\n<li>caramel</li>\n</ul>", @list.render
  end


end
