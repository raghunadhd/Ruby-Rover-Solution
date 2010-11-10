require 'test_helper'
class NavigatorTest < Test::Unit::TestCase
  context "Check requeriments" do
    setup do
      @nav = Navigator.new(1, 1,'N')
    end
    should 'have a direction' do
      assert @nav.direction.class == Direction
    end
    
    should 'have coords' do
      assert_not_nil @nav.pos_x
      assert_not_nil @nav.pos_y
    end
  end
  context "Basic Command functionality" do
    setup do
      @nav = Navigator.new(1, 1, 'N')
    end
    should 'be able to Rotate to the right' do
      @nav.rotate('R')
      assert_equal @nav.direction, 'E'
    end
    should 'be able to Rotate to the left' do
      @nav.rotate('L')
      assert_equal @nav.direction, 'W'
    end
    should 'be able to move forward' do
      @nav.move
      assert_equal @nav.pos_x, 1
    end
  end
  
  context "complete movements" do
    should 'rotate and move' do
      nav = Navigator.new(0,0,'N')
      # ROUND AND ROUND
      nav.rotate('L').move.rotate('L').move.rotate('L').move.rotate('L').move
      assert_equal nav.direction, 'N'
      assert_equal nav.pos_x, 0
      assert_equal nav.pos_y, 0
    end
  end
  
end
