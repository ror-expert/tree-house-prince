require "tree-house-prince/Study.rb"
require "test/unit"

class TestName < Test::Unit::TestCase
  def test_study()

    study_test = Study.new()
    assert_equal(study_test.enter(), 'fifth_floor')
  end

end
