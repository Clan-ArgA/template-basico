/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

params [["_unit", player], "_role", ["_uniform", "arga_u_gen3_bosque_marpat"], ["_helmet", "arga_cas_combate_bosque_marpat"], ["_vest", "arga_c_pesado_bosque_marpat"], ["_backPack", "arga_m_petate_bosque_marpat"], ["_backPackLittle", "arga_m_asalto_bosque_marpat"]];

if (!local _unit) exitWith {};

private _unitInsignia = [_unit] call BIS_fnc_getUnitInsignia;
[_unitInsignia] call MIV_fnc_log;

_unit call MANDI_fnc_clearEquipment;

_unit forceAddUniform _uniform;
_unit addVest _vest;

if (! isNil "_role") then {
    [_unit, _helmet, _backPack, _backPackLittle] call compile preprocessFile  _role;
};

[[_unit, _unitInsignia] call BIS_fnc_setUnitInsignia] call MIV_fnc_log;

/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/