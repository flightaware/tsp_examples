#
# Tcl Static Prime example referencing an array using upvar
#
# Note that the passed-in array name, _array, is defined as a var in
# the #tsp::procdef and "array", which _array is upvar'ed to, is
# defined as a tsp::array
#

package require tsp

tsp::proc aset {_array key value} {
	#tsp::procdef var -args var var var
	#tsp::compile assert
	#tsp::array array
	
	upvar $_array array

	set array($key) $value
	return $value
}

aset foo a "aaaaa"
aset foo b "beee"
aset foo c "see"

parray foo
