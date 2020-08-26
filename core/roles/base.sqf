/*******************************************************************************
                          Realizado por |ArgA|Ignacio
*******************************************************************************/

params [["_unit", player], "_role", ["_uniform", "arga_u_gen3_bosque_marpat"], ["_helmet", "arga_cas_combate_bosque_marpat"], ["_vest", "arga_c_pesado_bosque_marpat"], ["_backPack", "arga_m_petate_bosque_marpat"], ["_backPackLittle", "arga_m_asalto_bosque_marpat"]];

private _initialGoggles =  getMissionConfigValue ["GAFAS_INICIALES", ""];

if (!local _unit) exitWith {};

_unit call MANDI_fnc_clearEquipment;

_unit forceAddUniform _uniform;
_unit addVest _vest;

if (! isNil "_role") then {
    [_unit, _helmet, _backPack, _backPackLittle] call compile preprocessFile _role;
};

/* Mover a otro archivo @Todo vultur */
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 2 do {_unit addItemToUniform "adv_aceSplint_splint";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_elasticBandage";};
_unit addItemToUniform "ACE_EarPlugs";
_unit addItemToUniform "ACE_EntrenchingTool";
_unit addItemToUniform "ACE_MapTools";
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 5 do {_unit addItemToUniform "ACE_packingBandage";};

_unit linkItem "ItemMap";
_unit linkItem "ItemCompass";
_unit linkItem "ACE_Altimeter";
_unit linkItem "ItemGPS";
/* hasta aca */

if(_initialGoggles != "") then {
    _unit addGoggles _initialGoggles;
};

_unit call MIV_fnc_setInsignia;
/*******************************************************************************
                          Realizadoor |ArgA|Ignacio
*******************************************************************************/