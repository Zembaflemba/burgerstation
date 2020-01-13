var/global/list/area/transit/transit_areas = list()

/area/transit
	name = "transit"
	icon_state = "shuttle"

/area/transit/New(var/desired_loc)
	transit_areas[id] = src
	return ..()

/area/transit/arrivals_shuttle/centcomm
	name = "arrivals shuttle"
	id = "arrivals_shuttle_centcomm"

/area/transit/arrivals_shuttle/station
	name = "arrivals shuttle"
	id = "arrivals_shuttle_station"

/area/transit/arrivals_shuttle/bluespace
	name = "arrivals shuttle"
	id = "arrivals_shuttle_bluespace"

/area/transit/cargo/ship
	name = "cargo shuttle"
	id = "cargo_shuttle_station"

/area/transit/cargo/bluespace
	name = "spawn shuttle"
	id = "cargo_shuttle_bluespace"

/area/transit/cargo/planet
	name = "cargo shuttle"
	id = "cargo_shuttle_planet"

