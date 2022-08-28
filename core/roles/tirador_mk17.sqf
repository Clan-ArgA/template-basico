/*******************************************************************************
                          Realizado por MIV
*******************************************************************************/

params [["_unit", player], ["_helmet", "arga_cas_combate_bosque_marpat"], ["_backPack", "arga_m_petate_bosque_marpat"], ["_backPackLittle", "arga_m_asalto_bosque_marpat"]];

private _useBigBackPack = true;
private _back = if (_useBigBackPack) then {_backPack} else {_backPackLittle};

if (!local _unit) exitWith {};

_unit addBackpack _back;
_unit addHeadgear _helmet;

comment "Add weapons";
_unit addWeapon "rhs_weap_mk17_LB";
_unit addPrimaryWeaponItem "rhsusf_acc_aac_scarh_silencer";
_unit addPrimaryWeaponItem "rhsusf_acc_M8541_mrds";
_unit addPrimaryWeaponItem "rhs_mag_20Rnd_SCAR_762x51_mk316_special";
_unit addPrimaryWeaponItem "rhsusf_acc_harris_bipod";
_unit addWeapon "bersa";
_unit addHandgunItem "muzzle_snds_L";
_unit addHandgunItem "acc_flashlight_pistol";
_unit addHandgunItem "optic_MRD";
_unit addHandgunItem "16Rnd_9x21_Mag";

comment "Add binoculars";
_unit addWeapon "ACE_Vector";

comment "Add items to containers";
for "_i" from 1 to 2 do {_unit addItemToVest "ACE_Canteen";};
for "_i" from 1 to 3 do {_unit addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhs_mag_20Rnd_SCAR_762x51_m61_ap";};
for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_20Rnd_SCAR_762x51_m62_tracer";};
_unit addItemToBackpack "ACE_RangeCard";
_unit addItemToBackpack "ACE_wirecutter";
_unit addItemToBackpack "rhsusf_acc_ACOG_RMR";
for "_i" from 1 to 8 do {_unit addItemToBackpack "rhs_mag_20Rnd_SCAR_762x51_mk316_special";};

/*******************************************************************************
                          Realizado por MIV
*******************************************************************************/