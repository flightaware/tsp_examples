
package require tsp

tsp::proc tsp_latlongs_to_distance {lat1 lon1 lat2 lon2} {
	#tsp::procdef double -args double double double double
	#tsp::compile assert
	#tsp::double distance dLat dLon a c
	# 3963.0 is the radius of the earth in miles

    set dLat [expr {($lat2 - $lat1) * 0.017453292519943295}]
	set dLon [expr {($lon2 - $lon1) * 0.017453292519943295}]

    set lat1 [expr {$lat1 * 0.017453292519943295}]
    set lat2 [expr { $lat2 * 0.017453292519943295}]

    set a [expr {sin ($dLat / 2) * sin ($dLat / 2) + sin ($dLon / 2) * sin ($dLon / 2) * cos ($lat1) * cos ($lat2)}]
    set c [expr {2 * atan2 (sqrt ($a), sqrt (1 - $a))}]
    set distance [expr {3963.0 * $c}]

    # check for if result was not a number

    return $distance;
}

proc latlongs_to_distance {lat1 lon1 lat2 lon2} {
	#tsp::procdef double -args double double double double
	#tsp::compile assert
	#tsp::double distance dLat dLon a c
	# 3963.0 is the radius of the earth in miles

    set dLat [expr {($lat2 - $lat1) * 0.017453292519943295}]
	set dLon [expr {($lon2 - $lon1) * 0.017453292519943295}]

    set lat1 [expr {$lat1 * 0.017453292519943295}]
    set lat2 [expr { $lat2 * 0.017453292519943295}]

    set a [expr {sin ($dLat / 2) * sin ($dLat / 2) + sin ($dLon / 2) * sin ($dLon / 2) * cos ($lat1) * cos ($lat2)}]
    set c [expr {2 * atan2 (sqrt ($a), sqrt (1 - $a))}]
    set distance [expr {3963.0 * $c}]

    # check for if result was not a number

    return $distance;
}

puts "latlongs_to_distance"
puts [time {latlongs_to_distance 48 -96 49 -97} 10000]
puts ""

puts "tsp_latlongs_to_distance"
puts [time {tsp_latlongs_to_distance 48 -96 49 -97} 10000]

