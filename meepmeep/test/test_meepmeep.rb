require 'test/unit'
require 'meepmeep'

class TestMeepMeep < Test::Unit::TestCase
  
  def test_faux_read_from_file
    assert_equal("Meep meep!", Meepmeep.faux_read_from_file("foo.txt"))
  end
  
  def test_output
    assert_equal(nil, Meepmeep.output)
  end
  
end
