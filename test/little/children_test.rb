require 'test_helper'

class Little::ChildrenTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Little::Children::VERSION
  end

  def test_it_does_something_useful
    assert false
  end
end
