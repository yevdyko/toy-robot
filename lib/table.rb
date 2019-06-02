# frozen_string_literal: true

class Table
  attr_reader :width, :length

  def initialize(width: 5, length: 5)
    @width = width
    @length = length
  end

  def valid_position?(x_coordinate, y_coordinate)
    (0...width).cover?(x_coordinate) && (0...length).cover?(y_coordinate)
  end
end
