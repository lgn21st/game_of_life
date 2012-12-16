class Game

  def initialize(grid)
    @grid = grid

    init_length
    init_result_grid
  end

  def tick
    @y_length.times do |i|
      if alive_y?(i) && has_2_alive_y_neighbors?(i)
        set_alive_y(i)
      end
    end

    @x_length.times do |j|
      if alive_x?(j) && has_2_alive_x_neighbors?(j)
        set_alive_x(j)
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

  def alive_y?(i)
    @y_length > 1 && @grid[i][0] == 1
  end

  def alive_x?(j)
    @x_length > 1 && @grid[0][j] == 1
  end

  def set_alive_y(i)
    @next_tick_grid[i][0] = 1
  end

  def set_alive_x(j)
    @next_tick_grid[0][j] = 1
  end

  def has_2_alive_y_neighbors?(i)
    up_cell_alive?(i) && down_cell_alive?(i)
  end

  def has_2_alive_x_neighbors?(j)
    left_cell_alive?(j) && right_cell_alive?(j)
  end

  def left_cell_alive?(j)
    j > 0 && @grid[0][j-1] == 1
  end

  def right_cell_alive?(j)
    j < @x_length -1 && @grid[0][j+1] == 1
  end

  def up_cell_alive?(i)
    i > 0 && @grid[i-1][0] == 1
  end

  def down_cell_alive?(i)
    i < @y_length - 1 && @grid[i+1][0] == 1
  end
end
