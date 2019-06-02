# frozen_string_literal: true

require_relative '../command'

module Commands
  class Place < Command
    def call(table:, robot:)
      return unless table.valid_position?(x_coordinate, y_coordinate) && valid_facing?

      robot.x_coordinate = x_coordinate
      robot.y_coordinate = y_coordinate
      robot.facing = facing
    end

    # TODO: remove building params to the service object

    private

    def x_coordinate
      @x_coordinate ||= Integer(params[0])
    end

    def y_coordinate
      @y_coordinate ||= Integer(params[1])
    end

    def facing
      @facing ||= params[2].downcase.to_sym
    end

    def valid_facing?
      facing && Robot::FACINGS.include?(facing)
    end
  end
end
