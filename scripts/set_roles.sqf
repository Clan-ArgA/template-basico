/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

private _withoutDataBaseRole = getMissionConfigValue ["AUXILIAR_ROLE_LIST", []];

//["ROLE_LIST_ALT: ", _withoutDataBaseRole] call MIV_fnc_log;

private _roleList = if ((call MIV_fnc_isLogSystemEnabled)) then {call MIV_fnc_get_role_list} else {parseSimpleArray _withoutDataBaseRole};
private _role = [player, _roleList] call MANDI_fnc_getRole;

if (typeName _role != "STRING") then {_role = "desconocido"};

_role = 'roles\' + _role + '.sqf';

[objNull, _role] execVM "scripts\init_roles.sqf";

