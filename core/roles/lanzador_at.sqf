/*******************************************************************************
                          Realizado por |ArgA|Ignacio
						  Rol por       |ArgA|Nico|Cpt
*******************************************************************************/

params [["_unit", player], ["_helmet", "arga_cas_combate_bosque_marpat"], ["_backPack", "arga_m_petate_bosque_marpat"], ["_backPackLittle", "arga_m_asalto_bosque_marpat"]];

private _useBigBackPack = true;
private _back = if (_useBigBackPack) then {_backPack} else {_backPackLittle};

if (!local _unit) exitWith {};

_unit addBackpack _back;
_unit addHeadgear _helmet;

comment "Add weapons";
_unit addWeapon "ACFAA_FAMCA";
_unit addPrimaryWeaponItem "optic_Hamr";
_unit addPrimaryWeaponItem "ACE_20Rnd_762x51_Mk316_Mod_0_Mag";
_unit addWeapon "launch_RPG32_F";
_unit addSecondaryWeaponItem "RPG32_F";
_unit addWeapon "bersa";
_unit addHandgunItem "acc_flashlight_pistol";
_unit addHandgunItem "16Rnd_9x21_Mag";

comment "Add binoculars";
_unit addWeapon "Rangefinder";

comment "Add items to containers";
for "_i" from 1 to 4 do {_unit addItemToVest "SmokeShellBlue";};
_unit addItemToVest "ACE_M84";
for "_i" from 1 to 9 do {_unit addItemToVest "ACE_20Rnd_762x51_M993_AP_Mag";};
_unit addItemToBackpack "RPG32_HE_F";
for "_i" from 1 to 4 do {_unit addItemToBackpack "RPG32_F";};


/*******************************************************************************
                          Realizado por |ArgA|Ignacio
						  Rol por       |ArgA|Nico|Cpt
*******************************************************************************/