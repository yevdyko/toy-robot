# frozen_string_literal: true

class InputParser
  def call(input:)
    input_as_array = input.gsub(',', ' ').split
    command_type = input_as_array[0].downcase
    params = input_as_array[1..-1]
    [command_type, params]
  end
end
