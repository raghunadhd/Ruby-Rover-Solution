require 'test_helper'
class DirectionTest < Test::Unit::TestCase
  context "Basic Navigational Functions" do
    setup do
      @dir = Direction.new('N')
    end
    should 'allow to modify direction' do
      @dir.set('E')
      assert @dir == 'E'
      assert @dir == 90
    end
    should 'correctly set all all cardinal points with correct degrees' do
      @dir.set('N')
      assert @dir == 'N'
      assert @dir == 0
      
      @dir.set('E')
      assert @dir == 'E'
      assert @dir == 90
      
      @dir.set('S')
      assert @dir == 'S'
      assert @dir == 180
      
      
      @dir.set('W')
      assert @dir == 'W'
      assert @dir == 270
    end
  end
  
  context "Convert tools" do
    setup do
      @dir = Direction.new('N')
    end
    should "convert from degree to cardinal" do
      assert_equal @dir.to_cardinal, 'N'
    end
    should "convert from cardinal to degree" do
      assert_equal @dir.to_degree, 0
    end
  end

end
