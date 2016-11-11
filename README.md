# processing

Keep your terminal busy with a constant stream of output.

This project has moved to : https://bitbucket.org/matthewlinton/terminalprocessing

## Download

* Checkout: `git clone https://github.com/matthewlinton/processing.git`
* Change into the processing directory `cd processing`
* Run the processing script `./processing`

## About

The "processing.sh" script ties a number of other scripts together and sends a
constant stream of data to the terminal.

These scripts were created as an exercise to practice bash scripting and
explore various methods of using the bash shell. 

## Scripts

### processing.sh

This is the main script that loops through and selects random functions to run.

### header.sh

This file contains general functions that would be helpful to include in other scripts.
This script is meant to be loaded by other scripts. 

### random.sh

This script will generate random numbers or characters based off of the options
handed to it.

#### Usage
random.sh <type> <subtype>

### test.sh

This is a file that is used to test new scripts and experiment with new ideas. 
This is usually filled with random junk and may not produce any usefull output.
In the worse cases it may contain code that damages your system.
