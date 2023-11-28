removeAllWeapons player;
removeBackpack player;
removeVest player;
removeAllItems player;
removeHeadgear player;
removeUniform player;
player removeweapon "NVGoggles"; 

// Set ACE Arsenal Items
[] call compileScript ["params\XO_paramsArsenal.sqf"];
[player, XO_arsenal_present, false] call ace_arsenal_fnc_addVirtualItems;
// For Object
[[arsenalbox], 5, true] call compileScript ["scripts\XO_objectAction.sqf"];
systemChat "XO > [Player] 創建物件互動清單...完成";

systemChat "XO > [Player] 載入初始畫面...完成";