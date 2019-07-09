/decl/hierarchy/supply_pack/medical
	name = "Medical"
	containertype = /obj/structure/closet/crate/medical

/decl/hierarchy/supply_pack/medical/medical
	name = "Refills - Medical supplies"
	contains = list(/obj/item/weapon/storage/firstaid/regular,
					/obj/item/weapon/storage/firstaid/trauma,
					/obj/item/weapon/storage/firstaid/fire,
					/obj/item/weapon/storage/firstaid/toxin,
					/obj/item/weapon/storage/firstaid/o2,
					/obj/item/weapon/storage/firstaid/adv,
					/obj/item/weapon/storage/firstaid/stab,
					/obj/item/weapon/reagent_containers/glass/bottle/antitoxin,
					/obj/item/weapon/reagent_containers/glass/bottle/inaprovaline,
					/obj/item/weapon/reagent_containers/glass/bottle/stoxin,
					/obj/item/weapon/storage/box/syringes,
					/obj/item/weapon/storage/box/autoinjectors)
	cost = 70
	containername = "medical crate"

/decl/hierarchy/supply_pack/medical/atk
	name = "Triage - Advanced trauma supplies"
	contains = list(/obj/item/stack/medical/advanced/bruise_pack = 6)
	cost = 15
	containername = "advanced trauma crate"

/decl/hierarchy/supply_pack/medical/abk
	name = "Triage - Advanced burn supplies"
	contains = list(/obj/item/stack/medical/advanced/ointment = 6)
	cost = 15
	containername = "advanced burn crate"

/decl/hierarchy/supply_pack/medical/trauma
	name = "EMERGENCY - Trauma pouches"
	contains = list(/obj/item/weapon/storage/firstaid/trauma = 3)
	cost = 10
	containername = "trauma pouch crate"

/decl/hierarchy/supply_pack/medical/burn
	name = "EMERGENCY - Burn pouches"
	contains = list(/obj/item/weapon/storage/firstaid/fire = 3)
	cost = 10
	containername = "burn pouch crate"

/decl/hierarchy/supply_pack/medical/toxin
	name = "EMERGENCY - Toxin pouches"
	contains = list(/obj/item/weapon/storage/firstaid/toxin = 3)
	cost = 10
	containername = "toxin pouch crate"

/decl/hierarchy/supply_pack/medical/oxyloss
	name = "EMERGENCY - Low oxygen pouches"
	contains = list(/obj/item/weapon/storage/firstaid/o2 = 3)
	cost = 10
	containername = "low oxygen pouch crate"

/decl/hierarchy/supply_pack/medical/stab
	name = "Triage - Stability kit"
	contains = list(/obj/item/weapon/storage/firstaid/stab = 3)
	cost = 60
	containername = "stability kit crate"

/decl/hierarchy/supply_pack/medical/bloodpack
	name = "Refills - Empty blood packs"
	contains = list(/obj/item/weapon/storage/box/bloodpacks = 4)
	cost = 5
	containername = "blood pack crate"

/decl/hierarchy/supply_pack/medical/nanoblood
	name = "Refills - Nanoblood"
	contains = list(/obj/item/weapon/reagent_containers/ivbag/nanoblood = 4)
	cost = 15
	containername = "nanoblood crate"

/decl/hierarchy/supply_pack/medical/blood
	name = "Refills - O- blood packs"
	contains = list(/obj/item/weapon/reagent_containers/ivbag/blood/OMinus = 4)
	cost = 100
	containername = "\improper O- blood crate"

/decl/hierarchy/supply_pack/medical/bodybag
	name = "Equipment - Body bags"
	contains = list(/obj/item/weapon/storage/box/bodybags = 3)
	cost = 8
	containername = "body bag crate"

/decl/hierarchy/supply_pack/medical/stretcher
	name = "Equipment - Roller bed crate"
	contains = list(/obj/item/roller = 3)
	cost = 10
	containername = "\improper Roller bed crate"

/decl/hierarchy/supply_pack/medical/wheelchair
	name = "Equipment - Wheelchair crate"
	contains = list(/obj/structure/bed/chair/wheelchair)
	cost = 15
	containertype = /obj/structure/closet/crate/large
	containername = "\improper Wheelchair crate"

/decl/hierarchy/supply_pack/medical/medicalextragear
	name = "Gear - Medical surplus equipment"
	contains = list(/obj/item/weapon/storage/belt/medical = 3,
					/obj/item/clothing/glasses/hud/health = 3)
	cost = 15
	containertype = /obj/structure/closet/crate/secure
	containername = "medical surplus equipment crate"
	access = access_medical

/decl/hierarchy/supply_pack/medical/cmogear
	name = "Gear - Chief medical officer equipment"
	contains = list(/obj/item/weapon/storage/belt/medical,
					/obj/item/device/radio/headset/heads/cmo,
					/obj/item/clothing/under/rank/chief_medical_officer,
					/obj/item/weapon/reagent_containers/hypospray/vial,
					/obj/item/clothing/accessory/stethoscope,
					/obj/item/clothing/glasses/hud/health,
					/obj/item/clothing/suit/storage/toggle/labcoat/cmo,
					/obj/item/clothing/suit/storage/toggle/labcoat/cmoalt,
					/obj/item/clothing/mask/surgical,
					/obj/item/clothing/shoes/white,
					/obj/item/clothing/gloves/latex,
					/obj/item/device/scanner/health,
					/obj/item/device/flashlight/pen,
					/obj/item/weapon/reagent_containers/syringe)
	cost = 60
	containertype = /obj/structure/closet/crate/secure
	containername = "chief medical officer equipment crate"
	access = access_cmo

/decl/hierarchy/supply_pack/medical/doctorgear
	name = "Gear - Medical Doctor equipment"
	contains = list(/obj/item/weapon/storage/belt/medical,
					/obj/item/device/radio/headset/headset_med,
					/obj/item/clothing/under/rank/medical,
					/obj/item/clothing/accessory/stethoscope,
					/obj/item/clothing/glasses/hud/health,
					/obj/item/clothing/suit/storage/toggle/labcoat,
					/obj/item/clothing/mask/surgical,
					/obj/item/weapon/storage/firstaid/adv,
					/obj/item/clothing/shoes/white,
					/obj/item/clothing/gloves/latex,
					/obj/item/device/scanner/health,
					/obj/item/device/flashlight/pen,
					/obj/item/weapon/reagent_containers/syringe)
	cost = 20
	containertype = /obj/structure/closet/crate/secure
	containername = "medical Doctor equipment crate"
	access = access_medical_equip

/decl/hierarchy/supply_pack/medical/chemistgear
	name = "Gear - Chemist equipment"
	contains = list(/obj/item/weapon/storage/box/beakers,
					/obj/item/device/radio/headset/headset_med,
					/obj/item/weapon/storage/box/autoinjectors,
					/obj/item/clothing/under/rank/chemist,
					/obj/item/clothing/glasses/science,
					/obj/item/clothing/suit/storage/toggle/labcoat/chemist,
					/obj/item/clothing/mask/surgical,
					/obj/item/clothing/shoes/white,
					/obj/item/clothing/gloves/latex,
					/obj/item/weapon/reagent_containers/dropper,
					/obj/item/device/scanner/health,
					/obj/item/weapon/storage/box/pillbottles,
					/obj/item/weapon/reagent_containers/syringe)
	cost = 15
	containertype = /obj/structure/closet/crate/secure
	containername = "chemist equipment crate"
	access = access_chemistry

/decl/hierarchy/supply_pack/medical/paramedicgear
	name = "Gear - Paramedic equipment"
	contains = list(/obj/item/weapon/storage/belt/medical/emt,
					/obj/item/device/radio/headset/headset_med,
					/obj/item/clothing/under/rank/medical/scrubs/black,
					/obj/item/clothing/accessory/armband/medgreen,
					/obj/item/clothing/glasses/hud/health,
					/obj/item/clothing/suit/storage/toggle/labcoat,
					/obj/item/clothing/under/rank/medical/paramedic,
					/obj/item/clothing/suit/storage/toggle/fr_jacket,
					/obj/item/clothing/mask/gas,
					/obj/item/clothing/under/rank/medical/paramedic,
					/obj/item/clothing/accessory/stethoscope,
					/obj/item/weapon/storage/firstaid/adv,
					/obj/item/clothing/shoes/jackboots,
					/obj/item/clothing/gloves/latex,
					/obj/item/device/scanner/health,
					/obj/item/device/flashlight/pen,
					/obj/item/weapon/reagent_containers/syringe,
					/obj/item/clothing/accessory/storage/white_vest)
	cost = 20
	containertype = /obj/structure/closet/crate/secure
	containername = "paramedic equipment crate"
	access = access_medical_equip

/decl/hierarchy/supply_pack/medical/psychiatristgear
	name = "Gear - Psychiatrist equipment"
	contains = list(/obj/item/clothing/under/rank/psych,
					/obj/item/device/radio/headset/headset_med,
					/obj/item/clothing/under/rank/psych/turtleneck,
					/obj/item/clothing/shoes/laceup,
					/obj/item/clothing/suit/storage/toggle/labcoat,
					/obj/item/clothing/shoes/white,
					/obj/item/weapon/material/clipboard,
					/obj/item/weapon/folder/white,
					/obj/item/weapon/pen)
	cost = 15
	containertype = /obj/structure/closet/crate/secure
	containername = "psychiatrist equipment crate"
	access = access_psychiatrist

/decl/hierarchy/supply_pack/medical/medicalscrubs
	name = "Gear - Medical scrubs"
	contains = list(/obj/item/clothing/shoes/white = 4,
					/obj/item/clothing/under/rank/medical/scrubs/blue,
					/obj/item/clothing/under/rank/medical/scrubs/green,
					/obj/item/clothing/under/rank/medical/scrubs/purple,
					/obj/item/clothing/under/rank/medical/scrubs/black,
					/obj/item/clothing/head/surgery/black,
					/obj/item/clothing/head/surgery/purple,
					/obj/item/clothing/head/surgery/blue,
					/obj/item/clothing/head/surgery/green,
					/obj/item/weapon/storage/box/masks,
					/obj/item/weapon/storage/box/gloves)
	cost = 15
	containertype = /obj/structure/closet/crate/secure
	containername = "medical scrubs crate"
	access = access_medical_equip

/decl/hierarchy/supply_pack/medical/autopsy
	name = "Equipment - Autopsy equipment"
	contains = list(/obj/item/weapon/folder/white,
					/obj/item/device/camera,
					/obj/item/device/camera_film = 2,
					/obj/item/weapon/autopsy_scanner,
					/obj/item/weapon/scalpel,
					/obj/item/weapon/storage/box/masks,
					/obj/item/weapon/storage/box/gloves,
					/obj/item/weapon/pen)
	cost = 15
	containertype = /obj/structure/closet/crate/plastic
	containername = "autopsy equipment crate"
	access = access_morgue

/decl/hierarchy/supply_pack/medical/medicaluniforms
	name = "Gear - Medical uniforms"
	contains = list(/obj/item/clothing/shoes/white = 3,
					/obj/item/clothing/under/rank/chief_medical_officer,
					/obj/item/clothing/under/rank/geneticist,
					/obj/item/clothing/under/rank/virologist,
					/obj/item/clothing/under/rank/nursesuit,
					/obj/item/clothing/under/rank/nurse,
					/obj/item/clothing/under/rank/orderly,
					/obj/item/clothing/under/rank/medical = 3,
					/obj/item/clothing/under/rank/medical/paramedic = 3,
					/obj/item/clothing/suit/storage/toggle/labcoat = 3,
					/obj/item/clothing/suit/storage/toggle/labcoat/cmo,
					/obj/item/clothing/suit/storage/toggle/labcoat/cmoalt,
					/obj/item/clothing/suit/storage/toggle/labcoat/genetics,
					/obj/item/clothing/suit/storage/toggle/labcoat/virologist,
					/obj/item/clothing/suit/storage/toggle/labcoat/chemist,
					/obj/item/weapon/storage/box/masks,
					/obj/item/weapon/storage/box/gloves)
	cost = 15
	containertype = /obj/structure/closet/crate/secure
	containername = "medical uniform crate"
	access = access_medical_equip

/decl/hierarchy/supply_pack/medical/medicalbiosuits
	name = "Gear - Medical biohazard gear"
	contains = list(/obj/item/clothing/head/bio_hood = 3,
					/obj/item/clothing/suit/bio_suit = 3,
					/obj/item/clothing/head/bio_hood/virology = 2,
					/obj/item/clothing/suit/bio_suit/cmo = 2,
					/obj/item/clothing/mask/gas = 5,
					/obj/item/weapon/tank/oxygen = 5,
					/obj/item/weapon/storage/box/masks,
					/obj/item/weapon/storage/box/gloves)
	cost = 50
	containertype = /obj/structure/closet/crate/secure
	containername = "medical biohazard equipment crate"
	access = access_medical_equip

/decl/hierarchy/supply_pack/medical/portablefreezers
	name = "Equipment - Portable freezers"
	contains = list(/obj/item/weapon/storage/box/freezer = 7)
	cost = 25
	containertype = /obj/structure/closet/crate/medical
	containername = "portable freezers crate"


/decl/hierarchy/supply_pack/medical/surgery
	name = "Equipment - Surgery supplies"
	contains = list(/obj/item/weapon/cautery,
					/obj/item/weapon/surgicaldrill,
					/obj/item/clothing/mask/breath/medical,
					/obj/item/weapon/tank/anesthetic,
					/obj/item/weapon/FixOVein,
					/obj/item/weapon/hemostat,
					/obj/item/weapon/scalpel,
					/obj/item/weapon/bonegel,
					/obj/item/weapon/retractor,
					/obj/item/weapon/bonesetter,
					/obj/item/weapon/circular_saw,
					/obj/item/stack/medical/bruise_pack)
	cost = 25
	containername = "surgery crate"

//gear
/decl/hierarchy/supply_pack/medical/medicalbiosuits
	name = "Gear - Medical bio-suit gear"
	contains = list(/obj/item/clothing/head/bio_hood = 3,
					/obj/item/clothing/suit/bio_suit = 3,
					/obj/item/clothing/head/bio_hood/virology = 2,
					/obj/item/clothing/suit/bio_suit/virology = 2,
					/obj/item/clothing/mask/gas = 5,
					/obj/item/weapon/tank/oxygen = 5)
	cost = 40
	containertype = /obj/structure/closet/crate/secure
	containername = "medical biohazard equipment crate"
	access = core_access_medical_programs

/decl/hierarchy/supply_pack/medical/belts
	name = "Gear - Medical belts"
	contains = list(/obj/item/weapon/storage/belt/medical = 3)
	cost = 16
	containername = "medical belts crate"

//clothing
/decl/hierarchy/supply_pack/medical/medicalscrubs
	name = "Clothing - Assorted medical scrubs"
	contains = list(/obj/item/clothing/shoes/white = 16,
					/obj/item/clothing/under/rank/medical/scrubs/blue = 2,
					/obj/item/clothing/under/rank/medical/scrubs/green = 2,
					/obj/item/clothing/under/rank/medical/scrubs/purple = 2,
					/obj/item/clothing/under/rank/medical/scrubs/black = 2,
					/obj/item/clothing/under/rank/medical/scrubs/navyblue = 2,
					/obj/item/clothing/under/rank/medical/scrubs/lilac = 2,
					/obj/item/clothing/under/rank/medical/scrubs/teal = 2,
					/obj/item/clothing/under/rank/medical/scrubs/heliodor = 2,
					/obj/item/clothing/head/surgery/black = 2,
					/obj/item/clothing/head/surgery/purple = 2,
					/obj/item/clothing/head/surgery/blue = 2,
					/obj/item/clothing/head/surgery/green = 2,
					/obj/item/clothing/head/surgery/navyblue = 2,
					/obj/item/clothing/head/surgery/lilac = 2,
					/obj/item/clothing/head/surgery/teal = 2,
					/obj/item/clothing/head/surgery/heliodor = 2,
					/obj/item/clothing/suit/patientgown = 2,
					/obj/item/clothing/suit/surgicalapron = 2,
					/obj/item/weapon/storage/box/masks,
					/obj/item/weapon/storage/box/gloves)
	cost = 20
	containertype = /obj/structure/closet/crate/large
	containername = "medical scrubs crate"

//eva
/decl/hierarchy/supply_pack/medical/softsuit
	name = "EVA - Medical softsuit"
	contains = list(/obj/item/clothing/suit/space/medical,
					/obj/item/clothing/head/helmet/space/medical,
					/obj/item/clothing/shoes/magboots,
					/obj/item/weapon/tank/emergency/oxygen/engi)
	cost = 30
	containername = "medical voidsuit crate"
	containertype = /obj/structure/closet/crate/secure/large
	access = core_access_medical_programs

/decl/hierarchy/supply_pack/medical/voidsuit
	name = "EVA - Medical voidsuit"
	contains = list(/obj/item/clothing/suit/space/void/medical,
					/obj/item/clothing/head/helmet/space/void/medical,
					/obj/item/clothing/shoes/magboots)
	cost = 100
	containername = "medical voidsuit crate"
	containertype = /obj/structure/closet/crate/secure/large
	access = core_access_medical_programs

/decl/hierarchy/supply_pack/medical/traumaimplant
	name = "Trauma Implant"
	contains = list(/obj/item/weapon/implantcase/trauma_alarm,
					/obj/item/weapon/implanter)
	cost = 100
	containername = "\improper Trauma implant box"
	containertype = /obj/structure/closet/crate/secure
	access = core_access_command_programs

/decl/hierarchy/supply_pack/medical/voidsuit_heavyduty
	name = "EVA - Heavy-duty medical voidsuit"
	contains = list(/obj/item/clothing/suit/space/void/medical/alt/,
					/obj/item/clothing/head/helmet/space/void/medical/alt,
					/obj/item/clothing/shoes/magboots)
	cost = 150
	containername = "heavy-duty medical voidsuit crate"
	containertype = /obj/structure/closet/crate/secure/large
	access = core_access_medical_programs

//equipment
/decl/hierarchy/supply_pack/medical/cryobag
	name = "Equipment - Stasis bag"
	contains = list(/obj/item/bodybag/cryobag = 3)
	cost = 50
	containername = "stasis bag crate"

/decl/hierarchy/supply_pack/medical/sterile
	name = "Gear - Sterile clothes"
	contains = list(/obj/item/clothing/under/rank/medical/scrubs/green = 2,
					/obj/item/clothing/head/surgery/green = 2,
					/obj/item/weapon/storage/box/masks,
					/obj/item/weapon/storage/box/gloves,
					/obj/item/weapon/storage/belt/medical = 3)
	cost = 15
	containertype = /obj/structure/closet/crate
	containername = "sterile clothes crate"

/decl/hierarchy/supply_pack/medical/scanner_module
	name = "Electronics - Medical scanner modules"
	contains = list(/obj/item/weapon/computer_hardware/scanner/medical = 4)
	cost = 20
	containername = "medical scanner module crate"
	containertype = /obj/structure/closet/crate/secure
	access = access_medical_equip

/decl/hierarchy/supply_pack/medical/defib
	name = "Electronics - Defibrilator crate"
	contains = list(/obj/item/weapon/defibrillator)
	cost = 60
	containername = "\improper Defibrilator crate"
	containertype = /obj/structure/closet/crate/secure
	access = access_medical_equip

/decl/hierarchy/supply_pack/medical/beltdefib
	name = "Electronics - Compact Defibrilator crate"
	contains = list(/obj/item/weapon/defibrillator/compact)
	cost = 75
	containername = "\improper Compact Defibrilator crate"
	containertype = /obj/structure/closet/crate/secure
	access = access_medical_equip

/decl/hierarchy/supply_pack/medical/anesthetic
	name = "Equipment - Anesthetic tanks"
	contains = list(/obj/item/weapon/tank/anesthetic = 8,
					/obj/item/clothing/mask/breath/medical = 2)
	cost = 75
	containername = "anesthetic tanks crate"
