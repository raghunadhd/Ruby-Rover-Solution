require 'test_helper'
class PlateuTest < Test::Unit::TestCase
  context "A new plateu is assigned" do
    setup do
      @plateu = Plateu.new('1,2','3,4')
    end
    
    should 'have the correct arguments' do
      assert_equal @plateu.size, [[1,2],[3,4]]
    end
  end
end
