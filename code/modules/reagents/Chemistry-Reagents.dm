/datum/reagent
	var/name = "Reagent"
	var/description = "A non-descript chemical."
	var/taste_description = "old rotten bandaids"
	var/taste_mult = 1 //how this taste compares to others. Higher values means it is more noticable
	var/datum/reagents/holder = null
	var/reagent_state = SOLID
	var/list/data = null
	var/volume = 0
	var/metabolism = REM // This would be 0.2 normally
	var/ingest_met = 0
	var/touch_met = 0
	var/overdose = 0
	var/scannable = 0 // Shows up on health analyzers.
	var/color = "#000000"
	var/color_weight = 1
	var/flags = 0
	var/hidden_from_codex

	var/glass_icon = DRINK_ICON_DEFAULT
	var/glass_name = "something"
	var/glass_desc = "It's a glass of... what, exactly?"
	var/list/glass_special = null // null equivalent to list()

	// GAS DATA, generic values copied from base XGM datum type.
	var/gas_specific_heat = 20
	var/gas_molar_mass =    0.032
	var/gas_overlay_limit = 0.7
	var/gas_flags =    		XGM_GAS_REAGENT_GAS
	var/gas_burn_product
	var/gas_overlay = "generic"
	var/gas_id									// Override for reagents inwhich name != id of parent gas
	// END GAS DATA

	var/addictiveness = 0						// Soft measure of how addiction a substance is.
	var/addiction_median_dose = 0				// The dosage at which addiction is 50% likely
	var/datum/reagent/parent_substance = null	// Used to generalize addiction between related substances e.g. alcohols, opioids
	var/addiction_display_name
	var/severe_ticks = 0						// Bursts of severe symptoms of withdrawal unique to each level

	// Matter state data.
	var/chilling_point
	var/chilling_message = "crackles and freezes!"

	var/chilling_sound = 'sound/effects/bubbles.ogg'
	var/list/chilling_products

	var/list/heating_products
	var/heating_point
	var/heating_message = "begins to boil!"
	var/heating_sound = 'sound/effects/bubbles.ogg'

	var/temperature_multiplier = 1

/datum/reagent/New(var/datum/reagents/holder)
	//Have to comment this CRASH, because on mapload it breaks everything
	// if(!istype(holder))
	// 	CRASH("[src]: Invalid reagents holder: [log_info_line(holder)]")
	src.holder = holder
	if(!addiction_display_name)
		addiction_display_name = name
	..()

	//We only want to save what's actually neccessary, the rest will be initialized properly to its default values
	ADD_SAVED_VAR(volume)
	ADD_SAVED_VAR(data)
	ADD_SAVED_VAR(reagent_state)
	ADD_SAVED_VAR(holder)
	ADD_SAVED_VAR(severe_ticks)

	ADD_SKIP_EMPTY(data)

/datum/reagent/proc/remove_self(var/amount) // Shortcut
	if(QDELETED(src)) // In case we remove multiple times without being careful.
		return
	holder.remove_reagent(type, amount)

/datum/reagent/proc/on_leaving_metabolism(var/mob/parent, var/metabolism_class)
	return

// This doesn't apply to skin contact - this is for, e.g. extinguishers and sprays. The difference is that reagent is not directly on the mob's skin - it might just be on their clothing.
/datum/reagent/proc/touch_mob(var/mob/M, var/amount)
	return

/datum/reagent/proc/touch_obj(var/obj/O, var/amount) // Acid melting, cleaner cleaning, etc
	return

/datum/reagent/proc/touch_turf(var/turf/T, var/amount) // Cleaner cleaning, lube lubbing, etc, all go here
	return

/datum/reagent/proc/on_mob_life(var/mob/living/carbon/M, var/alien, var/location) // Currently, on_mob_life is called on carbons. Any interaction with non-carbon mobs (lube) will need to be done in touch_mob.
	if(QDELETED(src))
		return // Something else removed us.
	if(!istype(M))
		return
	if(!(flags & AFFECTS_DEAD) && M.stat == DEAD && (world.time - M.timeofdeath > 150))
		return
	if(overdose && (location != CHEM_TOUCH))
		var/overdose_threshold = overdose * (flags & IGNORE_MOB_SIZE? 1 : MOB_MEDIUM/M.mob_size)
		if(volume > overdose_threshold)
			overdose(M, alien)

	//determine the metabolism rate
	var/removed = metabolism
	if(ingest_met && (location == CHEM_INGEST))
		removed = ingest_met
	if(touch_met && (location == CHEM_TOUCH))
		removed = touch_met
	removed = M.get_adjusted_metabolism(removed)

	//adjust effective amounts - removed, dose, and max_dose - for mob size
	var/effective = removed
	if(!(flags & IGNORE_MOB_SIZE) && location != CHEM_TOUCH)
		effective *= (MOB_MEDIUM/M.mob_size)

	M.chem_doses[type] = M.chem_doses[type] + effective
	if(effective >= (metabolism * 0.1) || effective >= 0.1) // If there's too little chemical, don't affect the mob, just remove it
		switch(location)
			if(CHEM_BLOOD)
				affect_blood(M, alien, effective)
			if(CHEM_INGEST)
				affect_ingest(M, alien, effective)
			if(CHEM_TOUCH)
				affect_touch(M, alien, effective)

	if(addictiveness && (removed > 0 && config.addiction))
		M.metabolism_effects.check_reagent(src.type, volume, removed) // Handles addiction and withdrawal

	if(volume)
		remove_self(removed)

/datum/reagent/proc/affect_blood(var/mob/living/carbon/M, var/alien, var/removed)
	return

/datum/reagent/proc/affect_ingest(var/mob/living/carbon/M, var/alien, var/removed)
	affect_blood(M, alien, removed * 0.5)
	return

/datum/reagent/proc/affect_touch(var/mob/living/carbon/M, var/alien, var/removed)
	return

/datum/reagent/proc/overdose(var/mob/living/carbon/M, var/alien) // Overdose effect. Doesn't happen instantly.
	M.add_chemical_effect(CE_TOXIN, 1)
	M.adjustToxLoss(REM)
	return

//Addiction and Withdrawal//
/datum/reagent/proc/withdrawal_act_stage1(mob/living/carbon/human/M)
	if(severe_ticks > 0)
		severe_ticks--
		M.add_chemical_effect(CE_SLOWDOWN, 1)

/datum/reagent/proc/withdrawal_act_stage2(mob/living/carbon/human/M)
	if(severe_ticks > 0)
		severe_ticks--
		M.add_chemical_effect(CE_SLOWDOWN, 3)
		if(prob(5)) M.eye_blurry = 10
		if(prob(10)) M.adjustHalLoss(10)
	M.add_chemical_effect(CE_PULSE, 1)

/datum/reagent/proc/withdrawal_act_stage3(mob/living/carbon/human/M)
	if(severe_ticks > 0)
		severe_ticks--
		M.add_chemical_effect(CE_SLOWDOWN, 3)
		M.make_jittery(5)
		if(prob(10))
			M.vomit()
			M.eye_blurry = 10
	M.add_chemical_effect(CE_PULSE, 1)
	M.add_chemical_effect(CE_SLOWDOWN, 1)
	if(prob(10)) M.adjustHalLoss(5)

/datum/reagent/proc/withdrawal_act_stage4(mob/living/carbon/human/M)
	if(severe_ticks > 0)
		severe_ticks--
		M.make_jittery(10)
		if(prob(10)) M.hallucination(25, 30)
		if(prob(5)) M.adjustHalLoss(10)
	M.add_chemical_effect(CE_PULSE, 1)
	M.add_chemical_effect(CE_SLOWDOWN, 4)
	if(prob(5))
		M.vomit()
		M.eye_blurry = 10
	if(prob(10)) M.adjustHalLoss(5)

/datum/reagent/proc/initialize_data(var/newdata) // Called when the reagent is created.
	if(!isnull(newdata))
		data = newdata
	return

/datum/reagent/proc/mix_data(var/newdata, var/newamount) // You have a reagent with data, and new reagent with its own data get added, how do you deal with that?
	return

/datum/reagent/proc/get_data() // Just in case you have a reagent that handles data differently.
	if(data && istype(data, /list))
		return data.Copy()
	else if(data)
		return data
	return null

/datum/reagent/Destroy() // This should only be called by the holder, so it's already handled clearing its references
	holder = null
	. = ..()

/datum/reagent/proc/ex_act(obj/item/weapon/reagent_containers/holder, severity)
	return

/* DEPRECATED - TODO: REMOVE EVERYWHERE */

/datum/reagent/proc/reaction_turf(var/turf/target)
	touch_turf(target)

/datum/reagent/proc/reaction_obj(var/obj/target)
	touch_obj(target)

/datum/reagent/proc/reaction_mob(var/mob/target)
	touch_mob(target)

/datum/reagent/proc/custom_temperature_effects(var/temperature)