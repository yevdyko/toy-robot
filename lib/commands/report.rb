# frozen_string_literal: true

require_relative '../command'

module Commands
  class Report < Command
    def call(table:, robot:)
      puts "#{robot.x_coordinate},#{robot.y_coordinate},#{robot.facing.upcase}"
    end
  end
end
