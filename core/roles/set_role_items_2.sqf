/*******************************************************************************
                          Realizado por MIV
*******************************************************************************/

params [
    ["_unit", player], 
    ["_helmet", "arga_cas_combate_bosque_marpat"], 
    ["_backPack", "arga_m_petate_bosque_marpat"], 
    ["_backPackLittle", "arga_m_asalto_bosque_marpat"],
    "_weapons_items", 
    "_primary_weapon_items", 
    "_secondary_weapon_items", 
    "_hand_gun_items", 
    "_vest_items", 
    "_backpack_items"
];

private _useBigBackPack = true;
private _back = if (_useBigBackPack) then {_backPack} else {_backPackLittle};

if (!local _unit) exitWith {};

_unit addBackpack _back;
_unit addHeadgear _helmet;

// Function to add items to a unit
addItemsToUnit = {
    private ["_unit", "_items", "_addFunction"];
    _unit = _this select 0;
    _items = _this select 1;
    _addFunction = _this select 2;

    if (count _items > 0) then {
        {
            ["[set_role_items] _x:", _x] call MIV_fnc_log;
            private ["_item", "_count"];
            _item = _x select 0;
            _count = _x select 1;
            ["[set_role_items] _item:", _item] call MIV_fnc_log;
            ["[set_role_items] _count:", _count] call MIV_fnc_log;

            for "_i" from 1 to _count do {
                [_unit, _item] call _addFunction;
            };
        } forEach _items;
    };
};

// List of item variables and their corresponding functions
_items_and_functions = [
    [_weapons_items, { _this addWeapon _x }],
    [_primary_weapon_items, { _this addPrimaryWeaponItem _x }],
    [_secondary_weapon_items, { _this addSecondaryWeaponItem _x }],
    [_hand_gun_items, { _this addHandgunItem _x }],
    [_vest_items, { _this addItemToVest _x }],
    [_backpack_items, { _this addItemToBackpack _x }]
];

// Iterate through the list and call the function for each set of items
{
    private ["_items", "_func"];
    _items = _x select 0;
    _func = _x select 1;
    [_unit, _items, _func] call addItemsToUnit;
} forEach _items_and_functions;

/*******************************************************************************
                          Realizado por MIV
*******************************************************************************/
