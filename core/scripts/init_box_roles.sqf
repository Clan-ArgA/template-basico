/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

params ["_box"];

if(isNil "_box") exitWith {};

private _activeRoleList = call MIV_fnc_getActiveRoleList;
private _equipment      = call MIV_fnc_getEquipment;
private _equipmentItems = call MIV_fnc_getEquipmentItems;

removeAllActions _box;

private ["_roleCode","_role"];

{
    _role = _x select 0;
    _roleCode = [toLower _role, []] call MIV_fnc_getRoleCode;
	[_box, _role, _roleCode, _equipment, _equipmentItems] call compile preprocessFileLineNumbers "core\scripts\init_box_roles_addAction.sqf";
	
} forEach _activeRoleList;

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
// ["_role:",_role] call MIV_fnc_log;
// ["_roleCode:",_roleCode] call MIV_fnc_log;
// ["_arguments:",_arguments] call MIV_fnc_log;
// ["_params:",_params] call MIV_fnc_log;
