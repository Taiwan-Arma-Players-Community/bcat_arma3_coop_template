/*
 *  _objName:		物件名稱	(ex: "actionBox")
 *  _objRadius:		互動半徑	(ex: 5)
 *
 *	Source By XOT(ibalckcat#4119)
 */

params ["_objName", "_objRadius", "_spawnOption"];


{
	// 開啟軍火庫 ACE互動選單
	if ( count XO_arsenal_present > 1 ) then
	{
		[_x, XO_arsenal_present, false] call ACE_arsenal_fnc_initBox;
	} else {
		[_x, true, false] call ACE_arsenal_fnc_initBox;
	};

	// 開啟軍火庫 玩家清單
	_x addAction 
	[
		"<t color='#ffd700'>-- 開啟軍火庫 --</t>",
		{
			params ["_target", "_caller", "_actionId", "_arguments"];

			if ( count XO_arsenal_present > 1 ) then
			{
				[_caller, _caller, false] call ace_arsenal_fnc_openBox; 
			} else {
				[_caller, _caller, true] call ace_arsenal_fnc_openBox; 
			};
		},
		nil,
		99,
		false,
		true,
		"",
		"true", // _target, _this, _originalTarget
		_objRadius + 5
	];
} forEach _objName;
