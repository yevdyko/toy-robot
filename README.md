# Toy Robot

[![Build Status](https://travis-ci.org/yevdyko/toy-robot.svg?branch=master)](https://travis-ci.org/yevdyko/toy-robot)

The application is a simulation of a toy robot moving on a square tabletop written in Ruby.

## Available Commands

Commands | Description
--- | ---
PLACE X,Y,F | Place the robot on the table at coordinates x,y and facing the direction f. Valid x andy values are between 0-4. Valid facings are WEST, NORTH, EAST, SOUTH. Example Input: 'PLACE 0,0,NORTH'
MOVE | Move the robot forward 1 step in the direction it is facing.
LEFT | Turn the robot's direction 90 degress to the left. I.e. if the robot is facing NORTH, 1 left turn will turn the robot's direction to WEST.
RIGHT | Turn the robot's direction 90 degress to the right. I.e. if the robot is facing NORTH, 1 left turn will turn the robot's direction to EAST.
REPORT | Output the current position of the robot. Example Output: 'Output: 0,0,NORTH'

## Notes

I've used the command pattern to interpret user input and create Ruby objects representing these commands.

## Setup

Clone the repository:

    $ git clone git@github.com:yevdyko/toy-robot.git

Change into the directory:

    $ cd toy-robot

Install the required dependencies:

    $ bundle

## Testing

To run the tests:

    $ rspec

## How to use

    $ ruby ./bin/app.rb input_file_path.txt

For instance, you can use the following sample files with inputs:

### Example A

    $ ruby ./bin/app.rb ./data/sample_input_1.txt

Expected Output:

```
0,1,NORTH
```

### Example B

    $ ruby ./bin/app.rb ./data/sample_input_2.txt

Expected Output:

```
0,0,WEST
```

### Example C

    $ ruby ./bin/app.rb ./data/sample_input_3.txt

Expected Output:

```
3,3,NORTH
```
