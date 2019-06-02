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
end
