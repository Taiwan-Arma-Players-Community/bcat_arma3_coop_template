["XO > [Server] 開始伺服器初始化..."] remoteExec ["systemChat"];

call compileScript ["params\XO_paramsEnemy.sqf"];
call compileScript ["params\XO_paramsArsenal.sqf"];
["XO > [Server] 設定全域變數...完成"] remoteExec ["systemChat"];

[special_weapon_arsenal, radio_arsenal] call compileScript ["scripts\XO_boxInitialize.sqf"];
["XO > [Server] 準備補給物品...完成"] remoteExec ["systemChat"];

call compileScript ["tasks\task_init.sqf"];
["XO > [Server] 環境初始化...完成"]	remoteExec ["systemChat"];

["XO > [Server] 伺服器初始化...完畢"] remoteExec ["systemChat"];

