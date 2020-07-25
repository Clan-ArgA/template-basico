/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

if (isDedicated) exitWith {};

private _role = '';
private _defaultRoleList = parseSimpleArray getMissionConfigValue ["AUXILIAR_ROLE_LIST", '[]'];
private _badRoles = '';
private _noChangeRoles = '';
private _hintString = '';
private _maintainRole = False;

{
	_role = [_x, _defaultRoleList] call MANDI_fnc_getRole;
	_maintainRole = _x getVariable ["MIV_MAINTAIN_ROLE", false];
	if ((typeName _role != "STRING" || _role == "desconocido") && !_maintainRole) then {_badRoles = format['%1%2\n',_badRoles, roleDescription _x]};
	if (_maintainRole) then {_noChangeRoles = format['%1%2\n',_noChangeRoles, roleDescription _x]};
} foreach playableUnits;
if (count(_badRoles) > 0) then {
	_hintString = format['ROLES DESCONOCIDOS:\n%1\n',_badRoles];
};
if (count(_noChangeRoles) > 0 && count(_badRoles) > 0) then {
	_hintString = format['%1ROLES NO MODIFICADOS:\n%2\n',_hintString,_noChangeRoles];
};
if (count(_hintString) > 0) then {
	hint _hintString;
};

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

//["UNIT:",  _x, "ROLE_DESC:", roleDescription _x, "ROLE:", _role, "_badRoles:",((roleDescription _x) splitString "@") select 0] call MIV_fnc_log;
//["_badRoles:", _badRoles] call MIV_fnc_log;
