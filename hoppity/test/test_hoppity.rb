require 'test/unit'
require 'hiphop'

class TestHoppity < Test::Unit::TestCase
  
  def test_input_divisible_by_three 
    assert_equal("Hoppity", Hiphop.translate(3))
  end
  
  def test_input_divisible_by_five 
    assert_equal("Hophop", Hiphop.translate(5))
  end
  
  def test_input_divisible_by_three_and_five 
    assert_equal("Hop", Hiphop.translate(15))
  end
  
  def test_input_not_divisible_by_three_or_five 
    assert_equal(nil, Hiphop.translate(62))
  end
  
  def test_read_file
    assert_equal(22, Hiphop.read_max_from_file("../testfile.txt"))
    assert_equal(22, Hiphop.read_max_from_file("../testfile.rtf"))
  end
  
  
end
