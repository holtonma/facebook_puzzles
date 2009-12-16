require 'test/unit'
require 'liarliar'

class TestLiar < Test::Unit::TestCase
  
  def setup
    # output of reading file:
    @liar_data = [ 
      { :user => "Stephen", :accuses => "Tommaso"          },
      { :user => "Tommaso", :accuses => "Galileo"          },
      { :user => "Isaac"  , :accuses => "Tommaso"          },
      { :user => "Galileo", :accuses => "Tommaso"          },
      { :user => "George" , :accuses => "Isaac, Stephen"   }
    ]
  end
  
  def test_array_equal
    accused_1 = ["one", "two"]
    accused_2 = ["one", "two"]
    accused_3 = ["two", "three"]
    accused_4 = ["one"]
    
    assert_equal(accused_1, accused_2)
    assert_not_equal(accused_1, accused_3)
    assert_not_equal(accused_1, accused_4)
  end
  
  def test_read_file
    assert_equal(@liar_data, Liar.read_file("../testfile.txt"))
  end
  
  def test_categorize
    assert_equal("3 2", Liar.categorize(@liar_data))
  end
  
end

