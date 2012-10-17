require 'spec_helper'

def assert_grid(init_grid, expected_grid)
  game = Game.new init_grid
  game.tick.should == expected_grid
end

describe Game do

  context "only one cell" do
    it "one cell will still be dead" do
      assert_grid [[0]], [[0]]
      assert_grid [[1]], [[0]]
    end
  end

  context "two cells" do
    it "two cell will die" do
      assert_grid [[0], [0]],
                  [[0], [0]]

      assert_grid [[1], [0]],
                  [[0], [0]]

      assert_grid [[0], [1]],
                  [[0], [0]]

      assert_grid [[1], [1]],
                  [[0], [0]]
    end
  end

  context "three cells" do
    it "three dead cells will die" do
      assert_grid [[0], [0], [0]],
                  [[0], [0], [0]]

      assert_grid [[1], [0], [0]],
                  [[0], [0], [0]]

      assert_grid [[1], [1], [0]],
                  [[0], [0], [0]]
    end

  end

end
