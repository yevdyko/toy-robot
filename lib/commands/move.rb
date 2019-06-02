# frozen_string_literal: true

require_relative '../command'

module Commands
  class Move < Command
    def call(table:, robot:)
      return unless robot.placed?

      x_coordinate, y_coordinate = robot.next_move
      return unless table.valid_position?(x_coordinate, y_coordinate)

      robot.x_coordinate = x_coordinate
      robot.y_coordinate = y_coordinate
    end
  end
end
