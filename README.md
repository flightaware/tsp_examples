# tsp_examples, examples using the Tcl Static Prime Tcl-to-C/Java compiler

These are examples for the Tcl Static Prime compiler by Tom Poindexter at https://github.com/tpoindex/tsp

## array.tcl

[This example](https://github.com/flightaware/tsp_examples/blob/master/array.tcl) shows how to use upvar to pass the name of an array into a tsp::proc definition, a common usage pattern in Tcl.

## array2.tcl

This example [adds](https://github.com/flightaware/tsp_examples/blob/master/array2.tcl) "info exists" to check on the presence of an array element and needs the variable name argument to be quoted, like [info exists "foo(bar)"] to work.

## latlons.tcl

This [provides](https://github.com/flightaware/tsp_examples/blob/master/latlons.tcl) a proc to calculate the distance between a pair of latitudes and longitues and a tsp::proc equivalent and times runs of the two.

The tsp version seems to be about 5X faster.


## lrandom.tcl

This provides an [lrandrom proc](https://github.com/flightaware/tsp_examples/blob/master/lrandom.tcl) cribbed from the Tcl wiki and a tsp::proc equivalent and times runs of the two.

The tsp version seems to be about 2.5X faster.

## rand.tcl

This example creates a proc, [rand](https://github.com/flightaware/tsp_examples/blob/master/rand.tcl), that generates a random number between 0 and n-1, a la TclX's rand.

