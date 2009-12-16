require 'test/unit'
require 'liarliar'

class TestLiar < Test::Unit::TestCase
  
  def setup
    # output of reading file:
    @liar_data = [ 
      { :user => "Stephen", :accused => ["Tommaso"]          },
      { :user => "Tommaso", :accused => ["Galileo"]          },
      { :user => "Isaac"  , :accused => ["Tommaso"]          },
      { :user => "Stephen", :accused => ["Tommaso"]          },
      { :user => "Galileo", :accused => ["Tommaso"]          },
      { :user => "George" , :accused => ["Isaac", "Stephen"] }
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
    assert_equal(false, Liar.read_file("../testfile.txt"))
  end
  
  def test_categorize
    file_contents = Liar.read_file("../testfile.txt")
    assert_equal("4 2", Liar.categorize(file_contents))
  end
  
  def test_assemble_data
    file_contents = Liar.read_file("../testfile.txt")
    assert_equal(false, Liar.assemble_data(file_contents))
  end
      
  def test_analyze_liars 
    assert_equal("4 3", Liar.analyze_liars(@liar_data))
  end
  
end
