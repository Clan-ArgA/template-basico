/*******************************************************************************
                          Realizado por MIV
*******************************************************************************/

params [["_unit", player], ["_helmet", "arga_cas_combate_bosque_marpat"], ["_backPack", "arga_m_petate_bosque_marpat"], ["_backPackLittle", "arga_m_asalto_bosque_marpat"]];

private _useBigBackPack = false;
private _back = if (_useBigBackPack) then {_backPack} else {_backPackLittle};

if (!local _unit) exitWith {};

_unit setVariable ["ace_medical_medicClass", 2, true];
_unit addBackpack _back;
_unit addHeadgear _helmet;

comment "Add weapons";
_unit addWeapon "rhs_weap_hk416d145";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_unit addWeapon "bersa";
_unit addHandgunItem "acc_flashlight_pistol";
_unit addHandgunItem "16Rnd_9x21_Mag";

comment "Add items to containers";
_unit addItemToVest "ACE_surgicalKit";
_unit addItemToVest "ACRE_PRC152";
for "_i" from 1 to 6 do {_unit addItemToVest "ACE_tourniquet";};
_unit addItemToVest "SmokeShellBlue";
for "_i" from 1 to 2 do {_unit addItemToVest "kat_Painkiller";};
_unit addItemToVest "kat_Carbonate";
for "_i" from 1 to 10 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_M855A1_Stanag";};
for "_i" from 1 to 3 do {_unit addItemToBackpack "ACE_WaterBottle";};
for "_i" from 1 to 20 do {_unit addItemToBackpack "ACE_epinephrine";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_splint";};
for "_i" from 1 to 22 do {_unit addItemToBackpack "ACE_elasticBandage";};
for "_i" from 1 to 22 do {_unit addItemToBackpack "ACE_packingBandage";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_norepinephrine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_atropine";};
for "_i" from 1 to 10 do {_unit addItemToBackpack "kat_TXA";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "ACE_salineIV_250";};
_unit addItemToBackpack "ACE_bodyBag";
for "_i" from 1 to 10 do {_unit addItemToBackpack "ACE_morphine";};
for "_i" from 1 to 4 do {_unit addItemToBackpack "kat_IV_16";};
for "_i" from 1 to 6 do {_unit addItemToBackpack "SmokeShellBlue";};
for "_i" from 1 to 5 do {_unit addItemToBackpack "kat_Painkiller";};

/*******************************************************************************
                          Realizado por MIV
*******************************************************************************/