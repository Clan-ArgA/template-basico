/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

MIV_GET_ROLE_EQUPMENT_ITEMS = compile preprocessFileLineNumbers "core\roles\get_role_equipment_items.sqf";
MIV_SET_ROLE_ITEMS = compile preprocessFileLineNumbers "core\roles\set_role_items.sqf";

params [
  ["_unit", player], 
  "_role", 
  ["_uniform", "arga_u_gen3_bosque_marpat"], 
  ["_helmet", "arga_cas_combate_bosque_marpat"], 
  ["_vest", "arga_c_pesado_bosque_marpat"], 
  ["_backPack", "arga_m_petate_bosque_marpat"], 
  ["_backPackLittle", "arga_m_asalto_bosque_marpat"]
];

if (!local _unit) exitWith {};

private _activeRoleList     = call MIV_fnc_getActiveRoleList;
private _initialGoggles     = getMissionConfigValue ["GAFAS_INICIALES", ""];
private _allowGPS           = getMissionConfigValue ["GPS", 1] == 1;
private _allowNV            = getMissionConfigValue ["VISION_NOCTURNA", 1] == 1;
private _NVClass            = getMissionConfigValue ["TIPO_VN", "ACE_NVG_Wide"];
private _group              = [_unit] call MIV_fnc_getGroup;
private _watch              = "ItemWatch";
private _roleExtras         = [_role, _activeRoleList] call MIV_fnc_getRoleExtras;
private _roleUniform        = _roleExtras select 1;
private _roleHelmet         = _roleExtras select 2;
private _roleVest           = _roleExtras select 3;
private _roleBackpack       = _roleExtras select 4;
private _roleBackpackLittle = _roleExtras select 5;
private _useBigBackPack     = _roleExtras select 6;
private _setVariable        = _roleExtras select 7;
private _back               = if (_useBigBackPack) then {_backPack} else {_backPackLittle};

if (!(_roleUniform isEqualTo "")) then {_uniform = _roleUniform};
if (!(_roleHelmet isEqualTo "")) then {_helmet = _roleHelmet};
if (!(_roleVest isEqualTo "")) then {_vest = _roleVest};
if (_useBigBackPack && !(_roleBackpack isEqualTo "")) then {_back = _roleBackpack};
if (!_useBigBackPack && !(_roleBackpackLittle isEqualTo "")) then {_back = _roleBackpackLittle};

_unit call MANDI_fnc_clearEquipment;

{
	_unit setVariable _x;

} forEach _setVariable;


_unit forceAddUniform _uniform;
_unit addVest _vest;
_unit addBackpack _back;
_unit addHeadgear _helmet;

if(!(_initialGoggles isEqualTo "")) then {_unit addGoggles _initialGoggles;};

_unit linkItem "ItemMap";

if (_group in ["condor", "fog"]) then {
    _watch = "ACE_Altimeter";
};

_unit linkItem "ItemCompass";
_unit linkItem _watch;
if (_allowGPS) then {
    _unit linkItem "ItemGPS";
};
if (_allowNV) then {
    _unit linkItem _NVClass;
};

_unit call MIV_fnc_setInsignia;


/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/