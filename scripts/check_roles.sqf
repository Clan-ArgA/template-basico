/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

if (isDedicated) exitWith {};

private _role = '';
private _defaultRoleList = parseSimpleArray getMissionConfigValue ["AUXILIAR_ROLE_LIST", '[]'];
private _badRoles = 'ROLES DESCONOCIDOS:\n';
_units = allUnits select {side _x == west}; 
{
	_role = [_x, _defaultRoleList] call MANDI_fnc_getRole;
	if (typeName _role != "STRING" || _role == "desconocido") then {_badRoles = _badRoles + format['%1\n',roleDescription _x]};
	//_badRoles = _badRoles + format['%1\n',roleDescription _x];
	//_badRoles = _badRoles + format['%1\n',_role];

} foreach _units;
hint str _badRoles;