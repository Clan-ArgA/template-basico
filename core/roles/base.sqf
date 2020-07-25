/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

params [["_unit", player], "_rol", ["_uniform", "arga_u_gen3_bosque_marpat"], ["_helmet", "arga_cas_combate_bosque_marpat"], ["_vest", "arga_c_pesado_bosque_marpat"], ["_backPack", "arga_m_petate_bosque_marpat"], ["_backPackLittle", "arga_m_asalto_bosque_marpat"]];

if (!local _unit) exitWith {};

_unit call MANDI_fnc_clearEquipment;

_unit forceAddUniform _uniform;
_unit addVest _vest;

if (! isNil "_rol") then {
    [_unit, _helmet, _backPack, _backPackLittle] execVM _rol;
};

/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/