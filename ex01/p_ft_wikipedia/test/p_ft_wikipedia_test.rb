require "test_helper"

class PFtWikipediaTest < Minitest::Test

  def test_that_it_has_a_version_number
    refute_nil ::PFtWikipedia::VERSION
  end

  def test_lang
    p "test lang"
  end

  def test_article
    p "test lang"
  end

  def test_LoopDetected(str)

    if  == "Loop detected there is no way to philosophy here"
      p "test loop detected !"
    end

  end
  
end
