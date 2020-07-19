/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

private _roleList = call MIV_fnc_get_role_list;
private _role = [player, _roleList] call MANDI_fnc_getRole;
if (typeName _role != "STRING") then {_role = "desconocido"};
_role = 'roles\' + _role + '.sqf';
[objNull, _role] execVM "scripts\init_roles.sqf";

