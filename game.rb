class Game

  def initialize(grid)
    @grid = grid
    @grid_length = grid.length
  end

  def init_grid
    #Array.new(@grid_length) { [0] }
    @grid_length.times.map { [0] }
  end

  def tick
    init_grid
  end

end
