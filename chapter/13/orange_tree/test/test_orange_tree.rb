require 'OrangeTree'

class TestOrangeTree < MiniTest::Test

  def test_status_of_ungrown_tree
     tree = OrangeTree.new
     assert_equal('Your tree has not begun to grow yet.', tree.status, "A message indicating that the tree has not grown yet")
  end

  def test_growing_a_tree_2_years
     tree = OrangeTree.new
     2.times {
       tree.one_year_passes
     }
     assert_equal('Your tree is now 2 years old, 4 feet high and has 3 oranges.', tree.status, "A message indicating that tree is 2 years old and 4 feet")
  end

  def test_growing_a_tree_8_years
    tree = OrangeTree.new
    8.times {
      tree.one_year_passes
    }
    assert_equal('Your tree is now 8 years old, 16 feet high and has 29 oranges.', tree.status, "A message indicating that tree is 8 years old and 16 feet")
  end

  def test_a_tree_dying_after_10_years_of_growth
    tree = OrangeTree.new
    11.times {
      tree.one_year_passes
    }
    assert_equal('Your tree has passed away.', tree.status, "A message indicating your tree died after 10 years")
  end

  def test_orange_count_reducing_after_oranges_are_picked
    tree = OrangeTree.new
    4.times {
      tree.one_year_passes
    }
    2.times {
      tree.pick_orange
    }
    assert_equal('Your tree has 7 oranges.', tree.count_oranges, "7 oranges should remain after 2 are picked from a 4 year old tree")
  end
end