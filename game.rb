class Game

  def initialize(grid)
    @grid = grid

    init_length
    init_result_grid
  end

  def tick
    @y_length.times do |i|
      if alive?(i) && has_2_alive_neighbors?(i)
        set_alive(i)
      end
    end

    @next_tick_grid
  end

  private

  def init_result_grid
    @next_tick_grid = @y_length.times.map { [0] * @x_length }
  end

  def init_length
    @y_length = @grid.length
    @x_length = @grid[0].length
  end

  def alive?(i)
    @y_length > 1 && @grid[i][0] == 1
  end

  def set_alive(i)
    @next_tick_grid[i][0] = 1
    @next_tick_grid
  end

  def has_2_alive_neighbors?(i)
    up_cell_alive?(i) && down_cell_alive?(i)
  end

  def up_cell_alive?(i)
    i > 0 && @grid[i-1][0] == 1
  end

  def down_cell_alive?(i)
    i < @y_length - 1 && @grid[i+1][0] == 1
  end
end
