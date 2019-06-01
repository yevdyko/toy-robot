# frozen_string_literal: true

class Robot
  attr_accessor :x_coordinate, :y_coordinate, :facing

  def initialize(x_coordinate: nil, y_coordinate: nil, facing: nil)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @facing = facing
  end
end
