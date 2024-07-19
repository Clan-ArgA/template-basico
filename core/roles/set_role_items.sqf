/*******************************************************************************
                          Realizado por MIV
*******************************************************************************/

params [
    ["_unit", player], 
    ["_equipmentItems", []]
];

// ["[set_role_items] _equipmentItems:", _equipmentItems] call MIV_fnc_log;

if (count _equipmentItems == 0) exitWith { hint "_equipmentItems es []"; };
_equipmentItems params ["_uniform_items","_weapons_items","_primary_weapon_items","_secondary_weapon_items","_hand_gun_items","_vest_items","_backpack_items"];

if (!local _unit) exitWith {};

private _items = [
    [_uniform_items, {(_this select 0) addItemToUniform (_this select 1)}],
    [_weapons_items, {(_this select 0) addWeapon (_this select 1)}],
    [_primary_weapon_items, {(_this select 0) addPrimaryWeaponItem (_this select 1)}],
    [_secondary_weapon_items, {(_this select 0) addSecondaryWeaponItem (_this select 1)}],
    [_hand_gun_items, {(_this select 0) addHandgunItem (_this select 1)}],
    [_vest_items, {(_this select 0) addItemToVest (_this select 1)}],
    [_backpack_items, {(_this select 0) addItemToBackpack (_this select 1)}]
];

comment "Add items";
{
    // ["[set_role_items] _x:", _x] call MIV_fnc_log;
    if (count _x > 0 && count (_x select 0) > 0) then {
        private _accesory =_x select 0 select 0;
        private _addFunction = _x select 1;
        if (count _accesory > 0) then {
            {
                // ["[set_role_items] _x:", _x] call MIV_fnc_log;
                if (count _x > 0) then {
                    private _item = _x select 0;
                    private _count = _x select 1;
                    // ["[set_role_items] _item:", _item] call MIV_fnc_log;
                    // ["[set_role_items] _count:", _count] call MIV_fnc_log;
                    for "_i" from 1 to _count do {
                        [_unit, _item] call _addFunction;
                    };
                };
            } forEach _accesory;
        };
    };
} forEach _items

/*******************************************************************************
                          Realizado por MIV
*******************************************************************************/

// ["[set_role_items] _uniform_items:", _uniform_items] call MIV_fnc_log;
// ["[set_role_items] _weapons_items:", _weapons_items] call MIV_fnc_log;
// ["[set_role_items] _primary_weapon_items:", _primary_weapon_items] call MIV_fnc_log;
// ["[set_role_items] _secondary_weapon_items:", _secondary_weapon_items] call MIV_fnc_log;
// ["[set_role_items] _hand_gun_items:", _hand_gun_items] call MIV_fnc_log;
// ["[set_role_items] _vest_items:", _vest_items] call MIV_fnc_log;
// ["[set_role_items] _backpack_items:", _backpack_items] call MIV_fnc_log;
