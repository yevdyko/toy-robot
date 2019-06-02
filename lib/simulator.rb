# frozen_string_literal: true

require_relative 'input_parser'
require_relative 'command_builder'
require_relative 'table'
require_relative 'robot'

class Simulator
  def initialize(
    input_parser: InputParser.new,
    command_builder: CommandBuilder.new,
    table: Table.new,
    robot: Robot.new
  )
    @input_parser = input_parser
    @command_builder = command_builder
    @table = table
    @robot = robot
  end

  def call(input)
    command_type, params = @input_parser.call(input: input)
    command = @command_builder.call(type: command_type, params: params)
    command.call(table: @table, robot: @robot)
  end
end
