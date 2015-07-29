# tsp_examples, examples using the Tcl Static Prime Tcl-to-C/Java compiler

## array.tcl

This example shows how to use upvar to pass the name of an array into a tsp::proc definition, a common usage pattern in Tcl.

## array2.tcl

This example adds "info exists" to check on the presence of an array element and needs the variable name argument to be quoted, like [info exists "foo(bar)"] to work.

## lrandom.tcl

This provides an lrandrom proc cribbed from the Tcl wiki and a tsp::proc equivalent and times runs of the two.

The tsp version seems to be about 2.5X faster.

## rand.tcl

This example creates a proc, rand, that generates a random number between 0 and n-1, a la TclX's rand.

