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
_unit addWeapon "rhs_weap_hk416d145_m320";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_unit addWeapon "bersa";
_unit addHandgunItem "acc_flashlight_pistol";
_unit addHandgunItem "16Rnd_9x21_Mag";

_unit addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 3 do {_unit addItemToVest "ACE_M84";};
for "_i" from 1 to 3 do {_unit addItemToVest "HandGrenade";};
for "_i" from 1 to 5 do {_unit addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 4 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
_unit addItemToVest "rhs_mag_mk3a2";
for "_i" from 1 to 7 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk262_Stanag";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_M433_HEDP";};
for "_i" from 1 to 15 do {_unit addItemToBackpack "1Rnd_HE_Grenade_shell";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "rhs_mag_M397_HET";};
_unit addItemToBackpack "rhs_mag_m576";
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_M585_white_cluster";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhs_mag_m661_green";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_HuntIR_M203";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "UGL_FlareGreen_F";};

/*******************************************************************************
                          Realizado por MIV
*******************************************************************************/