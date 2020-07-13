/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

params ["_uid","_nameField"];

if (!isDedicated) exitWith { };

private _query = "SELECT '%1' from `arga-log`.log where player_uid = '%2' and log_type_id = 3 and id > (SELECT id from `arga-log`.log WHERE log_type_id = (select id from `arga-log`.log_type where name = 'mission_begin') AND mission_name = '%3' ORDER BY id DESC LIMIT 1) ORDER BY id DESC LIMIT 1;";

_query = format [_query, _nameField, _uid, missionName];

[format [">_query: %1", str _query]] call BIS_fnc_logFormat;

private _log_id = _query call MIV_fnc_connect_db;

if (count _log_id > 0) then {
	_log_id = (_log_id select 0) select 0;
} else {
	_log_id = "NULL";
};

_log_id;

/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/
