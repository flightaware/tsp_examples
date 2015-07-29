#
# Tcl Static Prime compiler example  - generate a random number between
#  0 and n-1, a la TclX's rand
#



package require tsp

tsp::proc rand {n} {
	#tsp::procdef int -args int
	#tsp::compile assert

	return [expr {int(rand() * $n)}]
}

for {set i 0} {$i < 10} {incr i} {
	puts [rand 10]
}
