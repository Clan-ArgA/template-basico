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
_unit addWeapon "rhs_weap_m240B";
_unit addPrimaryWeaponItem "rhsusf_acc_ARDEC_M240";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "rhsusf_100Rnd_762x51";
_unit addWeapon "bersa";
_unit addHandgunItem "acc_flashlight_pistol";
_unit addHandgunItem "16Rnd_9x21_Mag";

comment "Add binoculars";
_unit addWeapon "Binocular";

comment "Add items to containers";
for "_i" from 1 to 8 do {_unit addItemToVest "SmokeShellBlue";};
for "_i" from 1 to 3 do {_unit addItemToVest "rhsusf_100Rnd_762x51_m61_ap";};
_unit addItemToVest "16Rnd_9x21_Mag";
_unit addItemToVest "ACE_M84";
for "_i" from 1 to 5 do {_unit addItemToBackpack "ACE_Canteen";};
_unit addItemToBackpack "ACE_SpareBarrel_Item";
for "_i" from 1 to 4 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51_m61_ap";};
for "_i" from 1 to 2 do {_unit addItemToBackpack "rhsusf_100Rnd_762x51_m62_tracer";};


/*******************************************************************************
                          Realizado por MIV
*******************************************************************************/