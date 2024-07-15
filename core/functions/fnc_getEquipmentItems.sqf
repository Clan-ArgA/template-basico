/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/

private _uniformItems         = call compile preprocessFileLineNumbers 'core\scripts\db\querys\get_uniform_items.sqf';
private _weaponsItems         = call compile preprocessFileLineNumbers 'core\scripts\db\querys\get_weapon_items.sqf';
private _primaryWeaponItems   = [];
private _secondaryWeaponItems = [];
private _handGunItems         = [];
private _vestItems            = [];
private _backpackItems        = [];

[_uniformItems, _weaponsItems, _primaryWeaponItems, _secondaryWeaponItems, _handGunItems, _vestItems, _backpackItems]

/*******************************************************************************
                             Realizado por |ArgA|MIV
*******************************************************************************/
