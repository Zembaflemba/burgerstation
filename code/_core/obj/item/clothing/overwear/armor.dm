/obj/item/clothing/overwear/armor/bulletproof
	name = "bulletproof armor"
	icon = 'icons/obj/items/clothing/suit/bulletproof_vest.dmi'
	item_slot = SLOT_TORSO_A
	desc = "Protecting against the greytide since 2193."
	desc_extended = "A sturdy chestplate of bulletproof armor. Should protect against most small arms fire."

	protected_limbs = list(BODY_TORSO)

	rarity = RARITY_UNCOMMON

	defense_rating = list(
		BLADE = 10,
		BLUNT = 25,
		PIERCE = 50,
		LASER = 10,
		MAGIC = -25,
		COLD = 25
	)

	size = SIZE_4
	weight = WEIGHT_4

	value = 50

/obj/item/clothing/overwear/armor/cult
	name = "cult robes"
	icon = 'icons/obj/items/clothing/suit/cult.dmi'
	item_slot = SLOT_TORSO_A | SLOT_TORSO_O
	worn_layer = LAYER_MOB_CLOTHING_HARDSUIT

	rarity = RARITY_UNCOMMON

	defense_rating = list(
		BLADE = 25,
		BLUNT = 10,
		PIERCE = 15,
		LASER = -50,
		MAGIC = -15,
		HEAT = 10,
		COLD = 25,
		HOLY = 50
	)

	size = SIZE_4
	weight = WEIGHT_4

	value = 200

/obj/item/clothing/overwear/armor/cult/old
	name = "ancient cult robes"
	icon = 'icons/obj/items/clothing/suit/cult_old.dmi'

	rarity = RARITY_RARE

	defense_rating = list(
		BLADE = 25,
		BLUNT = 10,
		PIERCE = 15,
		LASER = -75,
		MAGIC = -25,
		HEAT = 10,
		COLD = 25,
		HOLY = 75
	)

	size = SIZE_3
	weight = WEIGHT_3

	value = 300

/obj/item/clothing/overwear/armor/cult/hard
	name = "hardened cult robes"
	icon = 'icons/obj/items/clothing/suit/cult_hard.dmi'

	rarity = RARITY_MYTHICAL

	defense_rating = list(
		BLADE = 25,
		BLUNT = 25,
		PIERCE = 25,
		LASER = -75,
		MAGIC = -75,
		HEAT = 50,
		COLD = 50,
		HOLY = 25,
	)

	size = SIZE_5
	weight = WEIGHT_5

	value = 300

/obj/item/clothing/overwear/armor/tutorial
	name = "tutorial armor"
	icon = 'icons/obj/items/clothing/suit/tutorial_dress.dmi'
	item_slot = SLOT_TORSO_O
	rarity = RARITY_MYTHICAL

	defense_rating = list(
		BLADE = 25,
		BLUNT = 15,
		PIERCE = 15,
		LASER = 10,
		MAGIC = 15,
		COLD = -25,
		HOLY = 15,
		DARK = 15
	)

	size = SIZE_4
	weight = WEIGHT_4

	value = 200

/obj/item/clothing/overwear/armor/knight
	name = "heavy knight armor"
	icon = 'icons/obj/items/clothing/suit/knight_blank.dmi'
	item_slot = SLOT_TORSO_A | SLOT_TORSO_O
	worn_layer = LAYER_MOB_CLOTHING_HARDSUIT
	rarity = RARITY_UNCOMMON

	protected_limbs = list(BODY_TORSO,BODY_GROIN,BODY_ARM_LEFT,BODY_ARM_RIGHT,BODY_HAND_LEFT,BODY_HAND_RIGHT,BODY_LEG_LEFT,BODY_LEG_RIGHT)

	defense_rating = list(
		BLADE = 50,
		BLUNT = 15,
		PIERCE = 10,
		LASER = 25,
		MAGIC = -100,
		HEAT = -75,
		COLD = 15,
		BOMB = 15
	)

	size = SIZE_6
	weight = WEIGHT_6
	slowdown_mul_worn = 1.3

	value = 150

/obj/item/clothing/overwear/armor/knight/red
	name = "red heavy knight armor"
	icon = 'icons/obj/items/clothing/suit/knight_red.dmi'

/obj/item/clothing/overwear/armor/knight/blue
	name = "blue heavy knight armor"
	icon = 'icons/obj/items/clothing/suit/knight_blue.dmi'

/obj/item/clothing/overwear/armor/knight/green
	name = "green heavy knight armor"
	icon = 'icons/obj/items/clothing/suit/knight_green.dmi'

/obj/item/clothing/overwear/armor/knight/yellow
	name = "yellow heavy knight armor"
	icon = 'icons/obj/items/clothing/suit/knight_yellow.dmi'

/obj/item/clothing/overwear/armor/knight/special
	name = "ultra heavy knight armor"
	icon = 'icons/obj/items/clothing/suit/knight_special.dmi'
	rarity = RARITY_MYTHICAL

	defense_rating = list(
		BLADE = 100,
		BLUNT = 15,
		PIERCE = 15,
		LASER = 25,
		MAGIC = -100,
		HEAT = -100,
		COLD = 15,
		BOMB = 15
	)

	size = SIZE_7
	weight = WEIGHT_7

/obj/item/clothing/overwear/armor/knight/templar
	name = "templar knight armor"
	icon = 'icons/obj/items/clothing/suit/knight_templar.dmi'
	rarity = RARITY_UNCOMMON

	defense_rating = list(
		BLADE = 25,
		BLUNT = 25,
		PIERCE = 10,
		LASER = 10,
		MAGIC = -25,
		HEAT = -15,
		COLD = 50,
		BOMB = 10,
		HOLY = -75,
		DARK = 75
	)

	size = SIZE_5
	weight = WEIGHT_4

	value = 200

/obj/item/clothing/overwear/armor/knight/battlemage
	name = "battlemage armor"
	icon = 'icons/obj/items/clothing/suit/knight_battlemage.dmi'
	rarity = RARITY_RARE

	defense_rating = list(
		BLADE = 25,
		BLUNT = 15,
		PIERCE = 10,
		LASER = -25,
		MAGIC = 25,
		HEAT = 25,
		COLD = 25,
		BOMB = 10,
		HOLY = -25,
		DARK = -25
	)

	size = SIZE_6
	weight = WEIGHT_6

	value = 300

/obj/item/clothing/overwear/armor/knight/daddy
	name = "giant father's armor"
	rarity = RARITY_LEGENDARY
	desc = "THE LEGEND NEVER DIES"
	icon = 'icons/obj/items/clothing/suit/knight_daddy.dmi'

	defense_rating = list(
		BLADE = 100,
		BLUNT = 25,
		PIERCE = 15,
		LASER = -25,
		MAGIC = -100,
		HEAT = -100,
		COLD = 15,
		BOMB = 10,
		HOLY = -25,
		DARK = -25
	)

	size = SIZE_7
	weight = WEIGHT_8

/obj/item/clothing/overwear/armor/hardsuit/
	name = "hardsuit"
	protected_limbs = list(BODY_TORSO,BODY_GROIN,BODY_ARM_LEFT,BODY_ARM_RIGHT,BODY_LEG_LEFT,BODY_LEG_RIGHT,BODY_FOOT_LEFT,BODY_FOOT_RIGHT)
	worn_layer = LAYER_MOB_CLOTHING_HARDSUIT
	rarity = RARITY_MYTHICAL


/obj/item/clothing/overwear/armor/hardsuit/syndie
	name = "mauler hardsuit mk1"
	icon = 'icons/obj/items/clothing/suit/syndie_basic.dmi'
	rarity = RARITY_UNCOMMON

	defense_rating = list(
		BLADE = 25,
		BLUNT = 15,
		PIERCE = 10,
		LASER = 15,
		MAGIC = -100,
		HEAT = 25,
		COLD = 50,
		BOMB = 15,
		BIO = 50,
		RAD = 15
	)

	size = SIZE_7
	weight = WEIGHT_7

	additional_clothing = list(/obj/item/clothing/head/helmet/hardsuit/syndie)

	slowdown_mul_worn = 1.2

	value = 120

/obj/item/clothing/overwear/armor/hardsuit/syndie/advanced
	name = "mauler hardsuit mk2"
	icon = 'icons/obj/items/clothing/suit/syndie_advanced.dmi'
	rarity = RARITY_RARE

	defense_rating = list(
		BLADE = 50,
		BLUNT = 25,
		PIERCE = 15,
		LASER = 25,
		MAGIC = -100,
		HEAT = 50,
		COLD = 75,
		BOMB = 25,
		BIO = 75,
		RAD = 25
	)

	size = SIZE_6
	weight = WEIGHT_6

	additional_clothing = list(/obj/item/clothing/head/helmet/hardsuit/syndie/advanced)

	slowdown_mul_worn = 1.2

	value = 180

/obj/item/clothing/overwear/armor/hardsuit/syndie/elite
	name = "mauler hardsuit mk3"
	icon = 'icons/obj/items/clothing/suit/syndie_elite.dmi'
	rarity = RARITY_MYTHICAL

	defense_rating = list(
		BLADE = 50,
		BLUNT = 50,
		PIERCE = 15,
		LASER = 50,
		MAGIC = -100,
		HEAT = 25,
		COLD = 50,
		BOMB = 15,
		BIO = 25,
		RAD = 15
	)

	additional_clothing = list(/obj/item/clothing/head/helmet/hardsuit/syndie/elite)

	size = SIZE_6
	weight = WEIGHT_5
	slowdown_mul_worn = 1

	value = 360

/obj/item/clothing/overwear/armor/hardsuit/mining
	name = "mining hardsuit"
	icon = 'icons/obj/items/clothing/suit/hardsuit_mining.dmi'
	rarity = RARITY_UNCOMMON

	defense_rating = list(
		BLADE = 25,
		BLUNT = 15,
		PIERCE = 15,
		LASER = 15,
		MAGIC = -75,
		HEAT = 50,
		COLD = 25,
		BOMB = 10,
		BIO = 25,
		RAD = 15
	)

	size = SIZE_7
	weight = WEIGHT_7

	additional_clothing = list(/obj/item/clothing/head/helmet/hardsuit/mining)

	slowdown_mul_worn = 1.2

	value = 80

/obj/item/clothing/overwear/armor/knight/magnus
	name = "white magnus armor"
	icon = 'icons/obj/items/clothing/suit/magnus.dmi'
	rarity = RARITY_RARE

	defense_rating = list(
		BLADE = 25,
		BLUNT = 25,
		PIERCE = 10,
		LASER = -25,
		MAGIC = 25,
		HEAT = 25,
		COLD = 15,
		HOLY = -25,
		DARK = 25
	)

	protected_limbs = list(BODY_TORSO,BODY_GROIN)

	size = SIZE_5
	weight = WEIGHT_5

	value = 300

/obj/item/clothing/overwear/armor/knight/magnus/red
	name = "red magnus armor"
	defense_rating = list(
		BLADE = 15,
		BLUNT = 15,
		PIERCE = 10,
		LASER = -15,
		MAGIC = 15,
		HEAT = 50,
		COLD = -25,
		HOLY = 25,
		DARK = -25
	)
	color = "#7F0000"

/obj/item/clothing/overwear/armor/knight/magnus/gold
	color = COLOR_GOLD

/obj/item/clothing/overwear/armor/carbon_armor
	name = "prototype carbon fibre armor"
	icon = 'icons/obj/items/clothing/suit/captain_suit.dmi'

	rarity = RARITY_MYTHICAL

	defense_rating = list(
		BLADE = 50,
		BLUNT = 15,
		PIERCE = 25,
		LASER = 100,
		MAGIC = -100,
		BOMB = 15
	)

	size = SIZE_6
	weight = WEIGHT_4

	protected_limbs = list(BODY_TORSO,BODY_GROIN,BODY_ARM_LEFT,BODY_ARM_RIGHT,BODY_LEG_LEFT,BODY_LEG_RIGHT)

	value = 200

/obj/item/clothing/overwear/armor/molded_armor
	name = "light armor"
	icon = 'icons/obj/items/clothing/suit/mod_chest_armor.dmi'

/obj/item/clothing/overwear/armor/molded_armor/leather
	name = "light leather armor"
	color = "#8C4438"

	defense_rating = list(
		BLADE = 25,
		BLUNT = 15,
		PIERCE = 15,
		COLD = 25
	)

	size = SIZE_3
	weight = WEIGHT_3

	value = 15

/obj/item/clothing/overwear/armor/molded_armor/security
	name = "light security armor"
	color = COLOR_BLACK

	defense_rating = list(
		BLADE = 25,
		BLUNT = 15,
		PIERCE = 25,
		LASER = 10,
		MAGIC = -15,
		COLD = 15
	)

	size = SIZE_3
	weight = WEIGHT_4

	value = 20

/obj/item/clothing/overwear/armor/molded_armor/security/nanotrasen
	name = "\improper NanoTrasen Private Security armor"
	color = COLOR_NANOTRASEN

/obj/item/clothing/overwear/armor/medium_armor
	name = "medium armor"
	icon = 'icons/obj/items/clothing/suit/medium_chest_armor.dmi'

	value = 30

	protected_limbs = list(BODY_TORSO,BODY_GROIN)

/obj/item/clothing/overwear/armor/medium_armor/leather
	name = "medium leather armor"
	color = "#8C4438"

	defense_rating = list(
		BLADE = 25,
		BLUNT = 25,
		PIERCE = 25,
		COLD = 25
	)

	size = SIZE_4
	weight = WEIGHT_4

	value = 30

/obj/item/clothing/overwear/armor/medium_armor/security
	name = "medium security armor"
	color = COLOR_BLACK

	defense_rating = list(
		BLADE = 25,
		BLUNT = 25,
		PIERCE = 50,
		MAGIC = -50,
		COLD = 15
	)

	size = SIZE_4
	weight = WEIGHT_5

	value = 50

/obj/item/clothing/overwear/armor/gladiator
	name = "gladiator armor"
	icon = 'icons/obj/items/clothing/suit/gladiator.dmi'
	rarity = RARITY_UNCOMMON

	value = 40

/obj/item/clothing/overwear/armor/gladiator/brass
	name = "bronze gladiator armor"
	color = "#B7A33E"
	item_slot = SLOT_TORSO_A
	worn_layer = LAYER_MOB_CLOTHING_ARMOR

	defense_rating = list(
		BLADE = 50,
		BLUNT = 15,
		PIERCE = 25,
		LASER = 25,
		MAGIC = -75
	)

	size = SIZE_5
	weight = WEIGHT_5

