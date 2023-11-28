enemyUnit 		= ["rhsgref_ins_squadleader",
			 	   "rhsgref_ins_rifleman", 
			       "rhsgref_ins_rifleman", 
			 	   "rhsgref_ins_rifleman", 
			 	   "rhsgref_ins_rifleman", 
				   "rhsgref_ins_machinegunner",
			 	   "rhsgref_ins_machinegunner",
			 	   "rhsgref_ins_grenadier",
				   "rhsgref_ins_grenadier",
			 	   "rhsgref_ins_medic"];

enemySmallUnit 	= ["rhsgref_ins_squadleader",
				   "rhsgref_ins_rifleman", 
				   "rhsgref_ins_machinegunner",
			 	   "rhsgref_ins_grenadier",
			 	   "rhsgref_ins_medic"];

vehicleUnit 	= ["rhsgref_ins_squadleader",
			   	   "rhsgref_ins_rifleman", 
				   "rhsgref_ins_rifleman", 
				   "rhsgref_ins_machinegunner"];

vehicleType 	= "O_T_LSV_02_armed_F";
vehicleApcType = "rhsgref_ins_btr60";
vehicleApc2Type = "rhsgref_ins_btr70";

missionNamespace setVariable ["EnemyUnit", enemyUnit, true];
missionNamespace setVariable ["EnemySmallUnit", enemySmallUnit, true];
missionNamespace setVariable ["VehicleUnit", vehicleUnit, true];
missionNamespace setVariable ["VehicleType", vehicleType, true];
missionNamespace setVariable ["VehicleApcType", vehicleApcType, true];
missionNamespace setVariable ["VehicleApc2Type", vehicleApc2Type, true];