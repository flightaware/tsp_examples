# tsp_examples, examples using the Tcl Static Prime Tcl-to-C/Java compiler

## array.tcl

This example shows how to use upvar to pass the name of an array into a tsp::proc definition, a common usage pattern in Tcl.

## array_broken.tcl

This example attempts to add "info exists" to check on the presence of an array element fails to compile.

## lrandom.tcl

This provides an lrandrom proc cribbed from the Tcl wiki and a tsp::proc equivalent and times runs of the two.

The tsp version seems to be about 2.5X faster.

## rand.tcl

This example creates a proc, rand, that generates a random number between 0 and n-1, a la TclX's rand.

