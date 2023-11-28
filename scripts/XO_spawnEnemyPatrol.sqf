/*
 *  _markerPos:		生成標記	(ex: "marker_1")
 *	_enemySide: 	敵軍軍勢	(ex: EAST / WEST)
 *	_enemyType: 	敵軍種類	(ex: ["O_Soldier_TL_F","O_Soldier_AR_F"])
 *	_enemyCount: 	單位數量	(ex: 10)
 *	_enemyRadius:	生成半徑	(ex: 300)
 *  _patrolRadius:	巡邏半徑	(ex: 300)
 * 
 *	Source By ChatGPT Mar 14 / Modified By XOT(ibalckcat#4119)
 */

params ["_markerPos", "_enemySide", "_enemyType", "_enemyCount", "_enemyRadius", "_patrolRadius"];

ret_unit = [];

// 生成指定的敵軍單位數量
for "_i" from 0 to _enemyCount - 1 do
{
	// 在標記位置周圍隨機找尋位置
	_enemyPos = [getMarkerPos _markerPos, 10, _enemyRadius] call BIS_fnc_findSafePos;

	// 在指定位置生成敵軍
	_enemyGroup = createGroup _enemySide;
	_enemyGroup = [_enemyPos, _enemySide, _enemyType] call BIS_fnc_spawnGroup;

	// 更換敵軍裝甲
	// [_enemyGroup] call compileScript ["scripts\XO_modifyUnit.sqf"];

	_enemyGroup deleteGroupWhenEmpty true;              //  當 Group 全滅為空後，刪除 Group，以避免 Group 數量達到上限

	// 建立巡邏軍
	[
		_enemyGroup,
		_enemyGroup,
		_patrolRadius,
		7,
		"MOVE",
		"SAFE",
		"GREEN"
	] call CBA_fnc_taskPatrol;

	ret_unit append units _enemyGroup;
};

// return value
ret_unit;