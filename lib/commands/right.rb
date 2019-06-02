# frozen_string_literal: true

require_relative '../command'

module Commands
  class Right < Command
    def call(table:, robot:)
      return unless robot.placed?

      robot.turn(:right)
    end
  end
end
