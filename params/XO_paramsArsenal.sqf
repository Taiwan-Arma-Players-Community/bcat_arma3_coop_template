_arsenal_present = [];

switch (["arsenal_type", 0] call BIS_fnc_getParamValue) do
{
	case 0: { call compileScript ["params\arsenal\tapc.sqf"] };			// For TAPC
	case 1: { call compileScript ["params\arsenal\tf101.sqf"] };		// For TF101
	case 2: { call compileScript ["params\arsenal\tapc_tf101.sqf"] };	// For TAPC & TF101 Coop
	case 99: { XO_arsenal_present = [] };
};

missionNamespace setVariable ["ArsenalPresent", XO_arsenal_present, true];