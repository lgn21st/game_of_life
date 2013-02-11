require 'spec_helper'

def match_grid(init_grid, expected_grid)
  game = Game.new init_grid
  game.tick.should == expected_grid
end

describe Game do

  context "axis Y" do
    it "1 cell" do
      match_grid [[0]], [[0]]
      match_grid [[1]], [[0]]
    end

    it "2 cells" do
      match_grid [[0], [0]],
                 [[0], [0]]

      match_grid [[1], [0]],
                 [[0], [0]]

      match_grid [[0], [1]],
                 [[0], [0]]

      match_grid [[1], [1]],
                 [[0], [0]]
    end

    context "3 cells" do
      it "all dead" do
        match_grid [[0], [0], [0]],
                   [[0], [0], [0]]

        match_grid [[1], [0], [0]],
                   [[0], [0], [0]]

        match_grid [[1], [1], [0]],
                   [[0], [0], [0]]
      end

      it "keep alive" do
        match_grid [[1], [1], [1]],
                   [[0], [1], [0]]
      end
    end

    it ">= 4 cells" do
      match_grid [[0], [0], [0], [0]],
                 [[0], [0], [0], [0]]

      match_grid [[1], [0], [0], [0]],
                 [[0], [0], [0], [0]]

      match_grid [[1], [1], [0], [0]],
                 [[0], [0], [0], [0]]

      match_grid [[1], [1], [1], [0]],
                 [[0], [1], [0], [0]]

      match_grid [[0], [1], [1], [1]],
                 [[0], [0], [1], [0]]

      match_grid [[1], [1], [1], [1]],
                 [[0], [1], [1], [0]]

      match_grid [[1], [1], [1], [1], [1]],
                 [[0], [1], [1], [1], [0]]
    end
  end

  context "axis X" do
    it "2 cells" do
      match_grid [[0, 0]],
                 [[0, 0]]

      match_grid [[1, 0]],
                 [[0, 0]]

      match_grid [[1, 1]],
                 [[0, 0]]
    end

    context "3 cells" do
      it "all dead" do
        match_grid [[0, 0, 0]],
                   [[0, 0, 0]]

        match_grid [[1, 0, 0]],
                   [[0, 0, 0]]

        match_grid [[1, 1, 0]],
                   [[0, 0, 0]]
      end

      it "keep alive" do
        match_grid [[1, 1, 1]],
                   [[0, 1, 0]]
      end
    end

    it "4 cells" do
      match_grid [[0, 0, 0, 0]],
                 [[0, 0, 0, 0]]

      match_grid [[1, 0, 0, 0]],
                 [[0, 0, 0, 0]]

      match_grid [[1, 1, 0, 0]],
                 [[0, 0, 0, 0]]

      match_grid [[1, 1, 1, 0]],
                 [[0, 1, 0, 0]]

      match_grid [[0, 1, 1, 1]],
                 [[0, 0, 1, 0]]

      match_grid [[1, 1, 1, 1]],
                 [[0, 1, 1, 0]]
    end
  end

  context "2 axis" do
    it "2x2 cells" do
      match_grid [[0, 0],
                  [0, 0]],
                 [[0, 0],
                  [0, 0]]

      match_grid [[1, 0],
                  [0, 0]],
                 [[0, 0],
                  [0, 0]]

      match_grid [[1, 1],
                  [0, 0]],
                 [[0, 0],
                  [0, 0]]

      match_grid [[1, 1],
                  [0, 1]],
                 [[1, 1],
                  [1, 1]]

      match_grid [[1, 1],
                  [1, 1]],
                 [[1, 1],
                  [1, 1]]
    end

    it "2x3 cells" do
      match_grid [[0, 1, 0],
                  [1, 0, 1]],
                 [[0, 1, 0],
                  [0, 1, 0]]

      match_grid [[1, 1, 1],
                  [1, 0, 1]],
                 [[1, 0, 1],
                  [1, 0, 1]]
    end
  end

end
