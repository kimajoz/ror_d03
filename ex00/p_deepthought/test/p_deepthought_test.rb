require "test_helper"

#why-undefined-method-assert-equal-is-thrown:
require "test/unit/assertions"
include Test::Unit::Assertions

class PDeepthoughtTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::PDeepthought::VERSION
  end

  def test_type_obj
    assert_equal Deepthought,
      Deepthought.new.class
  end

  def test_respond
    assert_equal "42",
      Deepthought.respond("The Ultimate Question of Life, the Universe and Everything")
  end

  def test_notrespond
    assert_not_equal "42",
      Deepthought.respond("Mmmm i'm bored")
  end
end
