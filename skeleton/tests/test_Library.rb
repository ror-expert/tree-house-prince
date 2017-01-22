require "tree-house-prince/Library.rb"
require "test/unit"

class TestName < Test::Unit::TestCase
  def test_library()

    library_test = Library.new()
    assert_equal(library_test.enter(), 'third_floor')
  end

end
