#
# Tcl Static Prime example referencing an array using upvar
#
# Note that the passed-in array name, _array, is defined as a var in
# the #tsp::procdef and "array", which _array is upvar'ed to, is
# defined as a tsp::array
#
# note how the call to "info exists", the argument has to be passed as a
# quoted string in order to work.
#
# also "incr array($key) $value" doesn't work because tsp wants a scalar
# for the variable name.  this is worked around in the code below.
#
#

package require tsp

tsp::proc aset {_array key value} {
	#tsp::procdef var -args var var int
	#tsp::compile assert
	#tsp::array array
	#tsp::boolean b
	#tsp::int i
	
	upvar $_array array

	set b [info exists "array($key)"]
	if {$b} {

		#incr array($key) $value
		set i $array($key)
		set array($key) [expr {$i + $value}]

	} else {
		set array($key) $value
	}

	return $array($key)
}

aset foo a 10
aset foo b 10
aset foo c 10

aset foo b 10

aset foo c 10
aset foo c 10

parray foo
