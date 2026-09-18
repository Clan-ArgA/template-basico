/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

params [["_missionState", "mission_end"]];

if (!(call MIV_fnc_isLogSystemEnabled)) exitWith { };

private ["_query", "_values"];

_query = "INSERT INTO log (`log_type_id`, `mission_name`, `mission_time`, `server_name`,`json_info`) VALUES";

private _json_info = '';
if (_missionState == 'mission_begin') then {
	_json_info = call compile preprocessFileLineNumbers 'core\scripts\db\get_missions_values.sqf' ;
};

_values = format [
	"((SELECT id from log_type WHERE name = '%1'), '%2', %3, '%4', '%5');",
	_missionState,
	missionName,
	time,
	serverName,
	_json_info
];

_query = [_query, _values] joinString " ";

// call espera a que termine la escritura (este script corre con execVM).
_query call MIV_fnc_connect_db;

// cron.sqf espera esta marca antes de escribir los "info" de la mision.
if (_missionState == 'mission_begin') then {
	missionNamespace setVariable ["MIV_MISSION_BEGIN_LOGGED", true];
};

_query = "INSERT INTO fps (`log_type_id`,`source`, `mission_name`, `server_name`) VALUES";

_values = format [
	"((SELECT id from log_type WHERE name = '%1'), '%2', '%3', '%4');",
	_missionState,
	'Server',
	missionName,
	serverName
];

_query = [_query, _values] joinString " ";

_query spawn MIV_fnc_connect_db;

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/