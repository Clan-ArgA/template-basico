/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

private _roleList = call MIV_fnc_get_role_list;
systemChat format['%1',_roleList];
private _role = [player, _roleList] call MANDI_fnc_getRole;

systemChat format['%1',_role];

if (typeName _role != "STRING") then {_role = "desconocido"};
if (_role == "desconocido" && isDedicated) then { _role = "fusilero"};

systemChat format['%1',_role];

_role = 'roles\' + _role + '.sqf';

[objNull, _role] execVM "scripts\init_roles.sqf";