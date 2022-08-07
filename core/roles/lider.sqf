/*******************************************************************************
                          Realizado por |ArgA|Ignacio
						  Rol por       |ArgA|Jhon|Cpt
*******************************************************************************/

params [["_unit", player], ["_helmet", "arga_cas_combate_bosque_marpat"], ["_backPack", "arga_m_petate_bosque_marpat"], ["_backPackLittle", "arga_m_asalto_bosque_marpat"]];

private _useBigBackPack = true;
private _back = if (_useBigBackPack) then {_backPack} else {_backPackLittle};

if (!local _unit) exitWith {};

_unit addBackpack _back;
_unit addHeadgear "arga_g_bo_capitan";

_unit addWeapon "rhs_weap_m4a1";
_unit addPrimaryWeaponItem "rhsusf_acc_nt4_black";
_unit addPrimaryWeaponItem "rhsusf_acc_anpeq15_bk_light";
_unit addPrimaryWeaponItem "rhsusf_acc_su230a_mrds";
_unit addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_unit addWeapon "rhsusf_weap_glock17g4";
_unit addHandgunItem "rhsusf_mag_17Rnd_9x19_JHP";
_unit addWeapon "Rangefinder";

_unit addItemToUniform "ACRE_PRC343";
for "_i" from 1 to 4 do {_unit addItemToUniform "ACE_epinephrine";};
_unit addItemToUniform "ACE_Flashlight_MX991";
_unit addItemToUniform "ACE_MapTools";
_unit addItemToUniform "ACE_IR_Strobe_Item";
for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_morphine";};
for "_i" from 1 to 3 do {_unit addItemToUniform "ACE_CableTie";};
for "_i" from 1 to 4 do {_unit addItemToUniform "adv_aceSplint_splint";};
for "_i" from 1 to 2 do {_unit addItemToUniform "ACE_tourniquet";};
for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_elasticBandage";};
for "_i" from 1 to 6 do {_unit addItemToUniform "ACE_packingBandage";};
_unit addItemToVest "ACRE_PRC152";
_unit addItemToVest "ACE_HuntIR_monitor";
_unit addItemToVest "ACE_plasmaIV_500";
_unit addItemToVest "ACE_salineIV_500";
_unit addItemToVest "ACE_bloodIV_500";
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_17Rnd_9x19_JHP";};
for "_i" from 1 to 8 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
_unit addItemToVest "ACE_M84";
_unit addItemToBackpack "ACRE_PRC117F";
_unit addItemToBackpack "ACRE_VHF30108SPIKE";
_unit addItemToBackpack "ACE_HuntIR_monitor";
for "_i" from 1 to 3 do {_unit addItemToBackpack "SmokeShellBlue";};
for "_i" from 1 to 1 do {_unit addItemToBackpack "HandGrenade";};
for "_i" from 1 to 1 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
_unit addItemToBackpack _helmet;

_unit addGoggles "G_Aviator";

/*******************************************************************************
                          Realizado por |ArgA|Ignacio
						  Rol por       |ArgA|Jhon|Cpt
*******************************************************************************/