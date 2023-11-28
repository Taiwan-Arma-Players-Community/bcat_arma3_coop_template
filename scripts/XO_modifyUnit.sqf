/*
 *  _modifyUnit:	需調整單位名稱	(ex: "marker_1")
 *
 *	Source & Modified By XOT(ibalckcat#4119)
 */

params ["_modifyUnit"];

// 更換敵軍裝甲與裝備
{
	removeBackpack _x;
    removeAllWeapons _x;
	removeUniform _x;

	_x addHeadgear  			"rhs_6b47_6m2";
	_x forceaddUniform			"rhs_uniform_vdv_emr_des";
	_x addVest 					"rhs_6b23_6sh116_flora";
	_x addBackpack 				"B_LegStrapBag_black_F";

	if (["nv_enable", 0] call BIS_fnc_getParamValue == 1) then
	{
		// Night Vision
		_x addItem		"rhs_1PN138";
		_x assignitem 	"rhs_1PN138";
	};

	// 繃帶
	for "_i" from 1 to 10 do { _x addItemToVest "ACE_fieldDressing"; };
	
	// 芭樂
    for "_i" from 1 to 2 do
	{ 
		_x addItemToVest "HandGrenade"; 
	};

	// 煙
	_smokeRandom = selectRandom [0, 1];
	if (_smokeRandom == 1) then
	{
		_x addItemToUniform "rhs_mag_rdg2_white";	
	};

	switch (selectRandom [0, 1, 2]) do
	{
		case 0: // Rifleman
		{
			_x addWeapon "arifle_AK12_F";
			_x addPrimaryWeaponItem	"optic_holosight_blk_f";
			_x addPrimaryWeaponItem	"30Rnd_762x39_AK12_Mag_F";

			for "_i" from 1 to 6 do { _x addItemToBackpack "30Rnd_762x39_AK12_Mag_F"; };
		};
		case 1: // Gererader
		{
			_x addWeapon "arifle_AK12_GL_F";
			_x addPrimaryWeaponItem	"optic_holosight_blk_f";
			_x addPrimaryWeaponItem	"30Rnd_762x39_AK12_Mag_F";
			_x addSecondaryWeaponItem "1Rnd_HE_Grenade_Shell";

			for "_i" from 1 to 6 do { _x addItemToBackpack "30Rnd_762x39_AK12_Mag_F"; _x addItemToVest "1Rnd_HE_Grenade_Shell"; };
			
		};
		case 2:	// Machine Gunner
		{
			_x addWeapon "LMG_Mk200_F";
			_x addPrimaryWeaponItem	"optic_holosight_blk_f";
			_x addPrimaryWeaponItem	"200Rnd_65x39_cased_Box";

			removeBackpack _x;
			_x addBackpack "B_AssaultPack_dgtl";

			for "_i" from 1 to 2 do { _x addItemToBackpack "200Rnd_65x39_cased_Box"; };
		};
	};

	

} forEach units _modifyUnit;