/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/

params [["_unit", player], ["_logType", "connected"]]];

// Llamamos a la db
call compile preprocessFileLineNumbers "scripts\db\source\oo_extdb3.sqf";

sleep 2;

private _extdb3 = "new" call OO_EXTDB3;
["setIniSectionDatabase", "Database"] call _extdb3;
["setDatabaseName", "arga-log"] call _extdb3;
["setQueryType", "SQL"] call _extdb3;
_result = "connect" call _extdb3;
[format ["connection: %1", str _result]] call BIS_fnc_logFormat;
/////////////////////

private _roleList = call compile preprocessFileLineNumbers "scripts\db\querys\get_role_list.sqf";

private _query = "INSERT INTO `arga-log`.`log` (`log_type_id`, `player_name`, `player_uid`, `player_state_id`, `mission_name`, `mission_id`, `role_id`) VALUES ";

_playerState = "alive";

private _values = format[
	"((SELECT id from log_type WHERE name = '%1'), '%2', '%3', (SELECT id from player_state WHERE name = '%4'), '%5', '%6', (SELECT id from role WHERE code = '%7'))",
	_logType,
	name _unit,
	getPlayerUID _unit,
	_playerState,
	missionName,
	"uid",
	[_unit, _roleList] call MANDI_fnc_getRole
];

_result = ["executeQuery", _query] call _extdb3;

[format ["SELECT: %1", str _result]] call BIS_fnc_logFormat;


/*******************************************************************************
                          Realizado por |ArgA|MandI
*******************************************************************************/