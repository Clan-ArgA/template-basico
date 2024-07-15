/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

private _uniformItems         = call compile preprocessFileLineNumbers 'core\scripts\db\querys\get_uniform_items.sqf';
private _weaponsItems         = call compile preprocessFileLineNumbers 'core\scripts\db\querys\get_weapon_items.sqf';
private _primaryWeaponItems   = call compile preprocessFileLineNumbers 'core\scripts\db\querys\get_primary_weapon_items.sqf';
private _secondaryWeaponItems = call compile preprocessFileLineNumbers 'core\scripts\db\querys\get_secondary_weapon_items.sqf';
private _handGunItems         = call compile preprocessFileLineNumbers 'core\scripts\db\querys\get_hand_gun_items.sqf';
private _vestItems            = call compile preprocessFileLineNumbers 'core\scripts\db\querys\get_vest_items.sqf';
private _backpackItems        = call compile preprocessFileLineNumbers 'core\scripts\db\querys\get_backpack_items.sqf';

[_uniformItems, _weaponsItems, _primaryWeaponItems, _secondaryWeaponItems, _handGunItems, _vestItems, _backpackItems]

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
