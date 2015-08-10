#
# access the contents of a global variable as a boolean
#

package require tsp


tsp::proc shout {} {
	#tsp::procdef void -args void
	#tsp::boolean mute
	
	global mute

	if {$mute} {
		return
	}

	puts "SHOUT"
}

set mute 0

puts "shouting with mute 0, should say SHOUT"
shout

set mute 1

puts "shouting with mute 1, should not say SHOUT"
shout
