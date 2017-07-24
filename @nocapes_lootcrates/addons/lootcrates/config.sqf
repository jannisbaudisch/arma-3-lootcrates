NOCLC_minCrates = 50;
NOCLC_maxCrates = 70;

NOCLC_showCratesOnMap = true;

NOCLC_crateTypes = [
	[
		"B_supplyCrate_F",	//Ammo box classname
		[		//Weapons
			//[classname, min, max]
			["srifle_LRR_LRPS_F",0,2],
			["srifle_GM6_LRPS_F",0,2]
		],
		[		//Magazines
			//[classname, min, max]
			["7Rnd_408_Mag",0,10],
			["5Rnd_127x108_Mag",0,10]
		],
		[		//Items
			//[classname, min, max]
			["FirstAidKit",2,5]
		],
		[		//Backpacks
			//[classname, min, max]
		]
	],
	[
		"B_CargoNet_01_ammo_F",	//Ammo box classname
		[
			//Weapons
			["LMG_Mk200_MRCO_F",0,2],
			["LMG_Zafir_ARCO_F",0,2]
		],
		[
			//Magazines
			["200Rnd_65x39_cased_Box",0,10],
			["150Rnd_762x54_Box",0,10]
		],
		[
			//Items
			["FirstAidKit",2,5]
		],
		[
			//Backpacks
		]
	],
	[
		"Box_NATO_AmmoVeh_F",	//Ammo box classname
		[
			//Weapons
			["hgun_P07_snds_F",0,2],
			["hgun_P07_F",0,8]
		],
		[
			//Magazines
			["150Rnd_762x54_Box",0,25]
		],
		[
			//Items
			["Rangefinder",0,4],
			["NVGoggles",0,4]
		],
		[
			//Backpacks
			["B_Bergen_sgg",0,4],
			["B_Bergen_mcamo",0,4],
			["B_Bergen_rgr",0,4],
			["B_Bergen_blk",0,4]
		]
	]
];