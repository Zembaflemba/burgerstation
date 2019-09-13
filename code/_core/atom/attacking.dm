/atom/proc/change_victim(var/atom/attacker)
	return src

/atom/proc/attack(var/atom/attacker,var/atom/victim,params,var/atom/blamed,var/ignore_distance = FALSE) //The src attacks the victim, with the blamed taking responsibility

	if(!blamed)
		blamed = attacker

	victim = victim.change_victim(attacker)

	if(attacker && victim && !ignore_distance)
		attacker.face_atom(victim)

	var/atom/object_to_damage_with = get_object_to_damage_with(attacker,victim,params)
	var/atom/object_to_damage = victim.get_object_to_damage(attacker,victim,params)

	if(!object_to_damage || !object_to_damage_with)
		if(is_mob(blamed))
			var/mob/M = blamed
			M.to_chat(span("notice","You can't attack that!"))

		//LOG_DEBUG("No object to damage or object to damage with.")
		return FALSE

	if(!attacker.can_attack(victim,object_to_damage_with,params))
		//LOG_DEBUG("Cannot attack.")
		return FALSE

	if(!ignore_distance && get_dist_advanced(attacker,victim) > object_to_damage_with.attack_range)
		return FALSE

	var/damagetype/DT = all_damage_types[object_to_damage_with.damage_type]

	if(!DT)
		//LOG_ERROR("[attacker] can't inflict harm with the [object_to_damage_with.type] due to the damage type [object_to_damage_with.damage_type] not existing!")
		return FALSE

	if(!DT.can_attack(attacker,victim,object_to_damage_with,object_to_damage))
		return FALSE

	object_to_damage_with.attack_last = curtime

	if(DT.perform_miss(blamed,victim,object_to_damage_with,object_to_damage)) return FALSE
	if(victim.perform_block(blamed,object_to_damage_with,object_to_damage,DT)) return FALSE
	if(victim.perform_parry(blamed,object_to_damage_with,object_to_damage,DT,DT.allow_parry_counter)) return FALSE
	if(victim.perform_dodge(blamed,object_to_damage_with,object_to_damage,DT)) return FALSE

	DT.do_damage(attacker,victim,object_to_damage_with,object_to_damage)

	return TRUE

/atom/proc/get_object_to_damage(var/atom/attacker,var/atom/victim,params) //Which object should the attacker damage?
	return victim

/atom/proc/get_object_to_damage_with(var/atom/attacker,var/atom/victim,params) //Which object should the attacker damage with?
	return src

/atom/proc/get_interact_delay(var/atom/user)
	return interact_delay_base

/atom/proc/can_attack(var/atom/victim,var/atom/weapon,var/params)

	if(victim)

		var/area/A1 = get_area(victim)
		var/area/A2 = get_area(src)

		if(A1.safe != A2.safe)
			return FALSE

	if(interact_last + get_interact_delay(src) > curtime)
		return FALSE

	if(victim && !victim.can_be_attacked(src,weapon,params))
		return FALSE

	return TRUE

/atom/proc/get_parry_chance(var/atom/attacker,var/atom/weapon,var/atom/target)
	return 0

/atom/proc/get_miss_chance(var/atom/attacker,var/atom/weapon,var/atom/target)
	return 0

/atom/proc/get_dodge_chance(var/atom/attacker,var/atom/weapon,var/atom/target,var/damagetype/DT)
	return 0

/atom/proc/get_block_chance(var/atom/attacker,var/atom/weapon,var/atom/target,var/damagetype/DT)
	return 0

/atom/proc/perform_block(var/atom/attacker,var/atom/weapon,var/atom/target,var/damagetype/DT)
	var/base_chance = get_block_chance(attacker,weapon,target,DT)
	if(!prob(base_chance))
		return FALSE
	DT.do_attack_animation(attacker,src,weapon,target)
	DT.display_miss_message(attacker,src,weapon,target,"blocked")

	if(is_living(attacker))
		var/mob/living/L = attacker
		L.to_chat(span("notice","\The [src.name] blocks your attack!"),CHAT_TYPE_COMBAT)

	if(is_living(src)) //YES, I KNOW
		var/mob/living/L = src
		L.to_chat(span("warning","You block \the [attacker.name]'s [weapon == attacker ? "attack" : weapon.name]!"),CHAT_TYPE_COMBAT)

	return TRUE

/atom/proc/perform_parry(var/atom/attacker,var/atom/weapon,var/atom/target,var/damagetype/DT,var/allow_parry_counter)
	var/base_chance = get_parry_chance(attacker,weapon,target)
	if(!prob(base_chance))
		return FALSE
	DT.do_attack_animation(attacker,src,weapon,target)
	DT.display_miss_message(attacker,src,weapon,target,"parried")

	if(is_living(attacker))
		var/mob/living/L = attacker
		L.to_chat(span("notice","\The [src.name] parries your attack!"),CHAT_TYPE_COMBAT)

	if(is_living(src)) //YES, I KNOW
		var/mob/living/L = src
		L.to_chat(span("warning","You parry \the [attacker.name]'s [weapon == attacker ? "attack" : weapon.name]!"),CHAT_TYPE_COMBAT)

	if(allow_parry_counter)
		src.attack(src,attacker)

	return TRUE

/atom/proc/perform_dodge(var/atom/attacker,var/atom/weapon,var/atom/target,var/damagetype/DT)
	var/base_chance = get_dodge_chance(attacker,weapon,target,DT)
	if(!prob(base_chance))
		return FALSE
	DT.do_attack_animation(attacker,src,weapon,target)
	DT.display_miss_message(attacker,src,weapon,target,"dodged")

	if(is_living(attacker))
		var/mob/living/L = attacker
		L.to_chat(span("notice","\The [src.name] dodges your attack!"),CHAT_TYPE_COMBAT)

	if(is_living(src)) //YES, I KNOW
		var/mob/living/L = src
		L.to_chat(span("warning","You dodge \the [attacker.name]'s [weapon == attacker ? "attack" : weapon.name]!"),CHAT_TYPE_COMBAT)

	return TRUE