# frozen_string_literal: true

class Robot
  FACINGS = %i[north east south west].freeze

  attr_accessor :x_coordinate, :y_coordinate, :facing

  def initialize(x_coordinate: nil, y_coordinate: nil, facing: nil)
    @x_coordinate = x_coordinate
    @y_coordinate = y_coordinate
    @facing = facing
  end

  def valid_facing?(facing)
    facing && FACINGS.include?(facing)
  end

  def placed?
    !(x_coordinate.nil? || y_coordinate.nil? || facing.nil?)
  end

  def next_move
    case facing
    when :north
      [x_coordinate, y_coordinate + 1]
    when :south
      [x_coordinate, y_coordinate - 1]
    when :east
      [x_coordinate + 1, y_coordinate]
    when :west
      [x_coordinate - 1, y_coordinate]
    end
  end

  def turn(direction)
    index = FACINGS.index(facing)
    rotation_index = direction == :right ? 1 : -1
    @facing = FACINGS.rotate(rotation_index)[index]
  end
end
