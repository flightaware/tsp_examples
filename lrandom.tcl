#
# lrandom implementation using the Tcl Static Prime compiler
#
#
#
package require tsp

proc lrandom {list} {lindex $list [expr {int(rand() * [llength $list])}]}

tsp::proc tsp_lrandom {list} {
	#tsp::procdef var -args var
	#tsp::compile assert
	#tsp::int len which
	set len [llength $list]
	set which [expr {int(rand() * $len)}]
	return [lindex $list $which]
}

set list [list a b c d 1 2 3 4]

puts [time {lrandom $list} 10000]
puts [time {tsp_lrandom $list} 10000]
