obj/structure/interactive/computer/console/old/research
	name = "bluespace research computer"
	computer_type = "library"
	keyboard_type = ""

obj/structure/interactive/computer/console/old/research/clicked_on_by_object(var/mob/caller,object,location,control,params)

	if(!is_living(caller))
		return ..()

	INTERACT_CHECK

	var/mob/living/L = caller
	L.toggle_research_game(FALSE,TRUE)

	return TRUE