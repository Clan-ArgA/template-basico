/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

params ["_sourcestr", "_fps", "_localgroups", "_localunits","_humanPlayers"];

if (!(call MIV_fnc_isLogSystemEnabled)) exitWith { };

private ["_query", "_values"];

_query = "INSERT INTO fps (`source`, `fps`, `local_groups`, `local_units`, `players`, `mission_name`, `server_name`) VALUES";

_values = format [
	"('%1', %2, %3, %4, %5, '%6', '%7');",
	_sourcestr,
	_fps,
	_localgroups,
	_localunits,
	_humanPlayers,
	missionName,
	serverName
];

_query = [_query, _values] joinString " ";

_query execVM "core\scripts\db\connect_db.sqf";

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

