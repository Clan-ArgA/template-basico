/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

// ["MIV_fnc_isLogSystemEnabled cron: ", (call MIV_fnc_isLogSystemEnabled)] call MIV_fnc_log;
if (!(call MIV_fnc_isLogSystemEnabled)) exitWith { };

private _count = 0;

while { _count < 5000} do {
// 	["cron.sqf count: ", _count] call MIV_fnc_log;
	[allPlayers, "info"] execVM "core\scripts\db\querys\write_log.sqf";
	_count = _count + 1;
	sleep 120;
};

execVM "core\scripts\db\cron.sqf";

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/