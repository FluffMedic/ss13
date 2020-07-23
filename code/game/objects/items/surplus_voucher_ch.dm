// Contains the supply vouchers for taskmanager.dm
/obj/item/surplus_voucher
	icon = 'icons/obj/items.dmi'
	icon_state = "pizza_voucher"
	throwforce = 0
	throw_speed = 5
	throw_range = 4
	force = 0

/obj/item/surplus_voucher/com
	name = "Reward Surplus Voucher"
	desc = "A surplus voucher! This one is meant to reward valued employees! Activate it for your surplus delivery!"
/obj/item/surplus_voucher/com/attack_self(mob/user as mob)
	spawn_item(get_turf(src))

/obj/item/surplus_voucher/com/proc/spawn_item(var/turf/T)
	var/path = pick(prob(6);/obj/item/weapon/reagent_containers/food/drinks/bottle/whiskey,
					prob(3);/obj/item/weapon/reagent_containers/food/drinks/bottle/specialwhiskey,
					prob(3);/obj/item/weapon/reagent_containers/food/drinks/bottle/vodka,
					prob(3);/obj/item/weapon/reagent_containers/food/drinks/bottle/tequilla,
					prob(3);/obj/item/weapon/reagent_containers/food/drinks/bottle/rum,
					prob(3);/obj/item/weapon/reagent_containers/food/drinks/bottle/goldschlager,
					prob(3);/obj/item/weapon/reagent_containers/food/drinks/bottle/vermouth,
					prob(3);/obj/item/weapon/reagent_containers/food/drinks/bottle/cognac,
					prob(3);/obj/item/weapon/reagent_containers/food/drinks/bottle/wine,
					prob(3);/obj/item/weapon/spacecash/c50,
					prob(3);/obj/item/weapon/spacecash/c100,
					prob(3);/obj/item/weapon/reagent_containers/food/snacks/bigbiteburger,
					prob(3);/obj/item/weapon/reagent_containers/food/snacks/cheeseburger,
					prob(3);/obj/item/weapon/reagent_containers/food/snacks/fries,
					prob(2);/obj/item/pizzabox/meat,
					prob(2);/obj/item/pizzabox/vegetable,
					prob(1);/obj/item/pizzabox/pineapple,
					prob(2);/obj/item/pizzabox/margherita,
					prob(2);/obj/item/pizzabox/mushroom,
					prob(3);/obj/item/toy/bouquet,
					prob(5);/obj/item/weapon/reagent_containers/food/drinks/bottle/small/beer,
					prob(3);/obj/item/weapon/storage/box/snappops,
					prob(2);/obj/item/clothing/under/syndicate/tacticool,
					prob(3);/obj/item/clothing/head/cowboy_hat/small,
					prob(3);/obj/item/toy/sword,
					prob(3);/obj/item/toy/cultsword,
					prob(1);/obj/structure/plushie/ian)
	playsound(T, 'sound/effects/phasein.ogg', 25, 1)
	new path(T)
	del(src)

/obj/item/surplus_voucher/eng
	name = "Engineering Surplus Voucher"
	desc = "A surplus voucher! This one is meant to resupply engineering with tools! Activate it for your surplus delivery!"
/obj/item/surplus_voucher/eng/attack_self(mob/user as mob)
	spawn_item(get_turf(src))

/obj/item/surplus_voucher/eng/proc/spawn_item(var/turf/T)
	var/path = pick(prob(2);/datum/design/item/powercell/high,
					prob(2);/obj/item/weapon/storage/briefcase/inflatable,
					prob(2);/obj/item/clamp,
					prob(3);/obj/item/weapon/extinguisher,
					prob(3);/obj/item/weapon/weldingtool/largetank,
					prob(2);/obj/item/weapon/tool/wirecutters,
					prob(3);/obj/item/weapon/tool/wrench,
					prob(3);/obj/item/weapon/tool/screwdriver,
					prob(3);/obj/item/device/analyzer,
					prob(3);/obj/item/device/t_scanner,
					prob(1);/obj/item/weapon/rms,
					prob(1);/obj/item/weapon/rcd,
					prob(3);/obj/item/weapon/rcd_ammo,
					prob(2);/obj/item/weapon/grenade/chem_grenade/metalfoam,
					prob(1);/obj/item/toy/figure/engineer)
	playsound(T, 'sound/effects/phasein.ogg', 25, 1)
	new path(T)
	del(src)



/obj/item/surplus_voucher/med
	name = "Medical Surplus Voucher"
	desc = "A surplus voucher! This one is meant to resupply medical with chemicals and kits! Activate it for your surplus delivery!"
/obj/item/surplus_voucher/med/attack_self(mob/user as mob)
	spawn_item(get_turf(src))

/obj/item/surplus_voucher/med/proc/spawn_item(var/turf/T)
	var/path = pick(prob(6);/obj/item/weapon/storage/firstaid/regular,
					prob(6);/obj/item/weapon/storage/firstaid/fire,
					prob(6);/obj/item/weapon/storage/firstaid/toxin,
					prob(6);/obj/item/weapon/storage/firstaid/o2,
					prob(6);/obj/item/weapon/storage/firstaid/adv,
					prob(2);/obj/item/weapon/storage/firstaid/surgery,
					prob(1);/obj/item/weapon/storage/firstaid/combat,
					prob(3);/obj/item/weapon/storage/pill_bottle/antitox,
					prob(3);/obj/item/weapon/storage/pill_bottle/bicaridine,
					prob(2);/obj/item/weapon/storage/pill_bottle/dexalin_plus,
					prob(3);/obj/item/weapon/storage/pill_bottle/dylovene,
					prob(3);/obj/item/weapon/storage/pill_bottle/inaprovaline,
					prob(3);/obj/item/weapon/storage/pill_bottle/kelotane,
					prob(3);/obj/item/weapon/storage/pill_bottle/dermaline,
					prob(3);/obj/item/weapon/storage/pill_bottle/spaceacillin,
					prob(3);/obj/item/weapon/storage/pill_bottle/tramadol,
					prob(3);/obj/item/weapon/storage/pill_bottle/carbon,
					prob(3);/obj/item/weapon/storage/pill_bottle/iron,
					prob(4);/obj/item/weapon/storage/pill_bottle/assorted,
					prob(1);/obj/item/weapon/storage/pill_bottle/combat,
					prob(4);/obj/item/weapon/backup_implanter,
					prob(2);/obj/item/toy/plushie/borgplushie/medihound)
	playsound(T, 'sound/effects/phasein.ogg', 25, 1)
	new path(T)
	del(src)

/obj/item/surplus_voucher/sci
	name = "Science Surplus Voucher"
	desc = "A surplus voucher! This one is meant to supply science with a variety of miscellaneous items! Activate it for your surplus delivery!"
/obj/item/surplus_voucher/sci/attack_self(mob/user as mob)
	spawn_item(get_turf(src))

/obj/item/surplus_voucher/sci/proc/spawn_item(var/turf/T)
	var/path = pick(prob(1);/obj/item/device/kit/paint/ripley,
					prob(1);/obj/item/device/kit/paint/ripley/death,
					prob(1);/obj/item/device/kit/paint/ripley/flames_red,
					prob(1);/obj/item/device/kit/paint/ripley/flames_blue,
					prob(1);/obj/item/device/kit/paint/durand,
					prob(1);/obj/item/device/kit/paint/gygax/darkgygax,
					prob(3);/obj/item/weapon/reagent_containers/food/snacks/monkeycube,
					prob(3);/obj/item/weapon/reagent_containers/food/snacks/monkeycube/sobakacube,
					prob(3);/obj/item/weapon/reagent_containers/food/snacks/monkeycube/sarucube,
					prob(3);/obj/item/weapon/reagent_containers/food/snacks/monkeycube/sparracube,
					prob(3);/obj/item/weapon/reagent_containers/food/snacks/monkeycube/wolpincube,
					prob(2);/obj/item/weapon/storage/part_replacer,
					prob(2);/obj/item/device/integrated_circuit_printer,
					prob(1);/obj/item/weapon/disk/integrated_circuit/upgrade/advanced,
					prob(3);/obj/item/stack/nanopaste,
					prob(3);/obj/item/weapon/melee/baton/slime,
					prob(3);/obj/item/weapon/gun/energy/taser/xeno,
					prob(3);/obj/item/weapon/storage/box/monkeycubes,
					prob(1);/obj/item/toy/figure/borg)
	playsound(T, 'sound/effects/phasein.ogg', 25, 1)
	new path(T)
	del(src)

/obj/item/surplus_voucher/sec
	name = "Security Surplus Voucher"
	desc = "A surplus voucher! This one is meant to resupply security with gear... and donuts! Activate it for your surplus delivery!"
/obj/item/surplus_voucher/sec/attack_self(mob/user as mob)
	spawn_item(get_turf(src))

/obj/item/surplus_voucher/sec/proc/spawn_item(var/turf/T)
	var/path = pick(prob(2);/obj/item/weapon/storage/box/flashbangs,
					prob(1);/obj/item/weapon/storage/box/empslite,
					prob(3);/obj/item/weapon/storage/box/smokes,
					prob(2);/obj/item/weapon/storage/box/teargas,
					prob(4);/obj/item/weapon/storage/box/flare,
					prob(5);/obj/item/weapon/storage/box/donut,
					prob(4);/obj/item/weapon/storage/box/handcuffs,
					prob(3);/obj/item/weapon/reagent_containers/spray/pepper,
					prob(2);/obj/item/weapon/gun/energy/taser,
					prob(2);/obj/item/weapon/gun/energy/stunrevolver,
					prob(3);/obj/item/weapon/melee/baton/loaded,
					prob(2);/obj/item/weapon/storage/box/beanbags,
					prob(2);/obj/item/weapon/storage/box/stunshells,
					prob(2);/obj/item/ammo_magazine/m45/rubber,
					prob(2);/obj/item/ammo_magazine/m9mmt/rubber,
					prob(1);/obj/item/weapon/gun/projectile/colt/detective,
					prob(1);/obj/item/weapon/gun/projectile/shotgun/pump,
					prob(1);/obj/item/toy/plushie/borgplushie)
	playsound(T, 'sound/effects/phasein.ogg', 25, 1)
	new path(T)
	del(src)

/obj/item/surplus_voucher/ser
	name = "Service Surplus Voucher"
	desc = "A surplus voucher! This one is meant to generally resupply service employees! Activate it for your surplus delivery!"
/obj/item/surplus_voucher/ser/attack_self(mob/user as mob)
	spawn_item(get_turf(src))

/obj/item/surplus_voucher/ser/proc/spawn_item(var/turf/T)
	var/path = pick(prob(4);/obj/item/weapon/reagent_containers/food/drinks/milk,
					prob(4);/obj/item/weapon/reagent_containers/food/condiment/flour,
					prob(4);/obj/item/weapon/reagent_containers/food/drinks/soymilk,
					prob(4);/obj/item/weapon/storage/fancy/egg_box,
					prob(3);/obj/item/weapon/reagent_containers/food/snacks/meat,
					prob(3);/obj/item/weapon/reagent_containers/spray/cleaner,
					prob(2);/obj/item/weapon/grenade/chem_grenade/cleaner,
					prob(1);/obj/item/weapon/storage/box/monkeycubes,
					prob(3);/obj/item/weapon/reagent_containers/spray/plantbgone,
					prob(2);/obj/item/seeds/sunflowerseed,
					prob(2);/obj/item/seeds/cornseed,
					prob(2);/obj/item/seeds/berryseed,
					prob(2);/obj/item/seeds/wheatseed,
					prob(2);/obj/item/seeds/orangeseed,
					prob(1);/obj/item/toy/figure/bartender)
	playsound(T, 'sound/effects/phasein.ogg', 25, 1)
	new path(T)
	del(src)