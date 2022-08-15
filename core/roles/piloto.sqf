/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/

params [["_unit", player], ["_helmet", "arga_cas_combate_bosque_marpat"], ["_backPack", "arga_m_petate_bosque_marpat"], ["_backPackLittle", "arga_m_asalto_bosque_marpat"]];

private _useBigBackPack = false;
private _back = if (_useBigBackPack) then {_backPack} else {_backPackLittle};
_helmet = "arga_cas_helicoptero_abierto";
_back = "arga_m_asalto_negro_liso";

if (!local _unit) exitWith {};

_unit setVariable ["ACE_GForceCoef",0.4];
_unit addBackpack _back;
_unit addHeadgear _helmet;
removeUniform _unit;
_unit forceAddUniform "arga_u_coverall_verde_liso";

_unit addWeapon "acfaa_mp5sd_base";
_unit addPrimaryWeaponItem "acfaa_32Rnd_9x19_FMJ_Mag";
_unit addWeapon "bersa";
_unit addHandgunItem "acc_flashlight_pistol";
_unit addHandgunItem "16Rnd_9x21_Mag";

for "_i" from 1 to 2 do {_unit addItemToVest "ACRE_PRC152";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_splint";};
_unit addItemToVest "ACE_microDAGR";
_unit addItemToVest "ACE_Flashlight_XL50";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_IR_Strobe_Item";};
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_CableTie";};
for "_i" from 1 to 6 do {_unit addItemToVest "ACE_30Rnd_556x45_Stanag_M995_AP_mag";};
for "_i" from 1 to 2 do {_unit addItemToVest "SmokeShellBlue";};
_unit addItemToVest "SmokeShellOrange";
_unit addItemToVest "HandGrenade";
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_mag_17Rnd_9x19_JHP";};
_unit addItemToBackpack "ToolKit";

//_unit linkItem "tf_microdagr";


/*******************************************************************************
                          Realizado por |ArgA|MIV
*******************************************************************************/