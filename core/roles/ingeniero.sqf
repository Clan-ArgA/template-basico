/*******************************************************************************
                          Realizado por MIV
*******************************************************************************/

params [["_unit", player], ["_helmet", "arga_cas_combate_bosque_marpat"], ["_backPack", "arga_m_petate_bosque_marpat"], ["_backPackLittle", "arga_m_asalto_bosque_marpat"]];

private _useBigBackPack = true;
private _back = if (_useBigBackPack) then {_backPack} else {_backPackLittle};

if (!local _unit) exitWith {};

_unit setVariable ["ACE_IsEngineer", 1, true];
_unit setVariable ["ACE_isEOD", true, true];
//_unit addBackpack _back;
_unit addBackpack "acfaa_Carryall_multicam";
_unit addHeadgear _helmet;

comment "Add weapons";
_unit addWeapon "rhs_weap_hk416d145";
_unit addPrimaryWeaponItem "rhsusf_acc_SF3P556";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "rhs_mag_30Rnd_556x45_M855A1_Stanag";
_unit addPrimaryWeaponItem "rhsusf_acc_grip3";
_unit addWeapon "bersa";
_unit addHandgunItem "acc_flashlight_pistol";
_unit addHandgunItem "16Rnd_9x21_Mag";

comment "Add binoculars";
_unit addWeapon "Binocular";

removeVest _unit;
_unit addVest "V_PlateCarrierIAGL_oli";

comment "Add items to containers";
_unit addItemToVest "MineDetector";
_unit addItemToVest "ACE_M26_Clacker";
_unit addItemToVest "ACE_DefusalKit";
for "_i" from 1 to 4 do {_unit addItemToVest "SmokeShellBlue";};
_unit addItemToVest "16Rnd_9x21_Mag";
for "_i" from 1 to 6 do {_unit addItemToVest "rhs_mag_30Rnd_556x45_Mk318_Stanag";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "ACE_Canteen";};
_unit addItemToBackpack "ToolKit";
for "_i" from 1 to 5 do {_unit addItemToBackpack "rhs_mag_30Rnd_556x45_M855A1_Stanag_Tracer_Red";};
_unit addItemToBackpack "SatchelCharge_Remote_Mag";
for "_i" from 1 to 3 do {_unit addItemToBackpack "DemoCharge_Remote_Mag";};


/*******************************************************************************
                          Realizado por MIV
*******************************************************************************/